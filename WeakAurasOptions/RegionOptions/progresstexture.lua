local L = WeakAuras.L
    
local function createOptions(id, data)
    local options = {
        foregroundTexture = {
            type = "input",
            name = L["Foreground Texture"],
            order = 0
        },
        backgroundTexture = {
            type = "input",
            name = L["Background Texture"],
            order = 5,
            disabled = function() return data.sameTexture; end,
            get = function() return data.sameTexture and data.foregroundTexture or data.backgroundTexture; end
        },
        mirror = {
            type = "toggle",
            width = "half",
            name = L["Mirror"],
            order = 10
        },
        chooseForegroundTexture = {
            type = "execute",
            name = L["Choose"],
            width = "half",
            order = 12,
            func = function()
                WeakAuras.OpenTexturePick(data, "foregroundTexture");
            end
        },
		desaturateForeground = {
            type = "toggle",
            name = L["Desaturate"],
            order = 17.5,
        },
        sameTexture = {
            type = "toggle",
            name = L["Same"],
            width = "half",
            order = 15
        },
		desaturateBackground = {
            type = "toggle",
            name = L["Desaturate"],
            order = 17.6,
        },
        chooseBackgroundTexture = {
            type = "execute",
            name = L["Choose"],
            width = "half",
            order = 17,
            func = function()
                WeakAuras.OpenTexturePick(data, "backgroundTexture");
            end,
            disabled = function() return data.sameTexture; end
        },
        blendMode = {
            type = "select",
            name = L["Blend Mode"],
            order = 20,
            values = WeakAuras.blend_types
        },
        backgroundOffset = {
            type = "range",
            name = L["Background Offset"],
            min = 0,
            softMax = 25,
            bigStep = 1,
            order = 25
        },
        orientation = {
            type = "select",
            name = L["Orientation"],
            order = 35,
            values = WeakAuras.orientation_types
        },
        compress = {
            type = "toggle",
            width = "half",
            name = L["Compress"],
            order = 40
        },
        inverse = {
            type = "toggle",
            width = "half",
            name = L["Inverse"],
            order = 41
        },
        foregroundColor = {
            type = "color",
            name = L["Foreground Color"],
            hasAlpha = true,
            order = 30
        },
        backgroundColor = {
            type = "color",
            name = L["Background Color"],
            hasAlpha = true,
            order = 37
        },
        user_x = {
            type = "range",
            order = 42,
            name = L["Re-center X"],
            min = -0.5,
            max = 0.5,
            bigStep = 0.01
        },
        user_y = {
            type = "range",
            order = 44,
            name = L["Re-center Y"],
            min = -0.5,
            max = 0.5,
            bigStep = 0.01
        },
        crop_x = {
            type = "range",
            name = L["Crop X"],
            order = 46,
            min = 0,
            softMax = 2,
            bigStep = 0.01,
            isPercent = true,
            set = function(info, v)
                data.width = data.width * ((1 + data.crop_x) / (1 + v));
                data.crop_x = v;
                WeakAuras.Add(data);
                WeakAuras.SetThumbnail(data);
                WeakAuras.SetIconNames(data);
                if(data.parent) then
                    local parentData = WeakAuras.GetData(data.parent);
                    if(parentData) then
                        WeakAuras.Add(parentData);
                        WeakAuras.SetThumbnail(parentData);
                    end
                end
                WeakAuras.ResetMoverSizer();
            end
        },
        crop_y = {
            type = "range",
            name = L["Crop Y"],
            order = 47,
            min = 0,
            softMax = 2,
            bigStep = 0.01,
            isPercent = true,
            set = function(info, v)
                data.height = data.height * ((1 + data.crop_y) / (1 + v));
                data.crop_y = v;
                WeakAuras.Add(data);
                WeakAuras.SetThumbnail(data);
                WeakAuras.SetIconNames(data);
                if(data.parent) then
                    local parentData = WeakAuras.GetData(data.parent);
                    if(parentData) then
                        WeakAuras.Add(parentData);
                        WeakAuras.SetThumbnail(parentData);
                    end
                end
                WeakAuras.ResetMoverSizer();
            end
        },
        rotation = {
            type = "range",
            name = L["Rotation"],
            order = 52,
            min = 0,
            max = 360,
            bigStep = 1
        },
        alpha = {
            type = "range",
            name = L["Alpha"],
            order = 48,
            min = 0,
            max = 1,
            bigStep = 0.01,
            isPercent = true
        },
        stickyDuration = {
            type = "toggle",
            name = L["Sticky Duration"],
            desc = L["Prevents duration information from decreasing when an aura refreshes. May cause problems if used with multiple auras with different durations."],
            order = 55
        },
        spacer = {
            type = "header",
            name = "",
            order = 60
        }
    };
    options = WeakAuras.AddPositionOptions(options, id, data);
    
    return options;
end

-- Credit to CommanderSirow for taking the time to properly craft the ApplyTransform function
-- to the enhance the abilities of Progress Textures.

-- NOTES:
--  Most SetValue() changes are quite equal (among compress/non-compress)
--  (There is no GUI button for mirror_v, but mirror_h)
--  New/Used variables
--   region.user_x (0) - User defined center x-shift [-1, 1]
--   region.user_y (0) - User defined center y-shift [-1, 1]
--   region.mirror_v (false) - Mirroring along x-axis [bool]
--   region.mirror_h (false) - Mirroring along y-axis [bool]
--   region.cos_rotation (1) - cos(ANGLE), precalculated cos-function for given ANGLE [-1, 1]
--   region.sin_rotation (0) - sin(ANGLE), precalculated cos-function for given ANGLE [-1, 1]
--   region.scale (1.0) - user defined scaling [1, INF]
--   region.full_rotation (false) - Allow full rotation [bool]


local function ApplyTransform(x, y, region)
  -- 1) Translate texture-coords to user-defined center
  x = x - 0.5
  y = y - 0.5
  
  -- 2) Shrink texture by 1/sqrt(2)
  x = x * 1.4142
  y = y * 1.4142
  
  -- 3) Scale texture by user-defined amount
  x = x / region.scale_x
  y = y / region.scale_y
  
  -- 4) Apply mirroring if defined
  if region.mirror_h then
	x = -x
  end
  if region.mirror_v then
	y = -y
  end
  
  -- 5) Rotate texture by user-defined value
  --[[local x_tmp = region.cos_rotation * x - region.sin_rotation * y
  local y_tmp = region.sin_rotation * x + region.cos_rotation * y
  x = x_tmp
  y = y_tmp]]
  x, y = region.cos_rotation * x - region.sin_rotation * y, region.sin_rotation * x + region.cos_rotation * y
  
  -- 6) Translate texture-coords back to (0,0)
  x = x + 0.5 + region.user_x
  y = y + 0.5 + region.user_y

  -- Return results
  return x, y
end

local function createThumbnail(parent, fullCreate)
    local borderframe = CreateFrame("FRAME", nil, parent);
    borderframe:SetWidth(32);
    borderframe:SetHeight(32);
    
    local border = borderframe:CreateTexture(nil, "OVERLAY");
    border:SetAllPoints(borderframe);
    border:SetTexture("Interface\\BUTTONS\\UI-Quickslot2.blp");
    border:SetTexCoord(0.2, 0.8, 0.2, 0.8);
    
    local region = CreateFrame("FRAME", nil, borderframe);
    borderframe.region = region;
    region:SetWidth(32);
    region:SetHeight(32);
    
    local background = region:CreateTexture(nil, "BACKGROUND");
    borderframe.background = background;
    
    local foreground = region:CreateTexture(nil, "ART");
    borderframe.foreground = foreground;
    
    return borderframe;
end

local function modifyThumbnail(parent, borderframe, data, fullModify, size)
    local region, background, foreground = borderframe.region, borderframe.background, borderframe.foreground;
    
    size = size or 30;
    local scale;
    if(data.height > data.width) then
        scale = size/data.height;
        region:SetWidth(scale * data.width);
        region:SetHeight(size);
        foreground:SetWidth(scale * data.width);
        foreground:SetHeight(size);
    else
        scale = size/data.width;
        region:SetWidth(size);
        region:SetHeight(scale * data.height);
        foreground:SetWidth(size);
        foreground:SetHeight(scale * data.height);
    end
    
    region:ClearAllPoints();
    region:SetPoint("CENTER", borderframe, "CENTER");
    region:SetAlpha(data.alpha);
    
    background:SetTexture(data.sameTexture and data.foregroundTexture or data.backgroundTexture);
    background:SetVertexColor(data.backgroundColor[1], data.backgroundColor[2], data.backgroundColor[3], data.backgroundColor[4]);
    background:SetBlendMode(data.blendMode);
    
    foreground:SetTexture(data.foregroundTexture);
    foreground:SetVertexColor(data.foregroundColor[1], data.foregroundColor[2], data.foregroundColor[3], data.foregroundColor[4]);
    foreground:SetBlendMode(data.blendMode);
    
    background:ClearAllPoints();
    foreground:ClearAllPoints();
    background:SetPoint("BOTTOMLEFT", region, "BOTTOMLEFT", -1 * scale * data.backgroundOffset, -1 * scale * data.backgroundOffset);
    background:SetPoint("TOPRIGHT", region, "TOPRIGHT", scale * data.backgroundOffset, scale * data.backgroundOffset);
    
    region.mirror_h = data.mirror;
    region.scale_x = 1 + (data.crop_x or 0.41);
    region.scale_y = 1 + (data.crop_y or 0.41);
    region.rotation = data.rotation or 0;
    region.cos_rotation = cos(region.rotation);
    region.sin_rotation = sin(region.rotation);
    region.user_x = -1 * (data.user_x or 0);
    region.user_y = data.user_y or 0;
    
    local function orientHorizontal()
        foreground:ClearAllPoints();
        foreground:SetPoint("LEFT", region, "LEFT");
        region.orientation = "HORIZONTAL_INVERSE";
        if(data.compress) then
            function region:SetValue(progress)
                region.progress = progress;
				
				local ULx, ULy = ApplyTransform(0, 0, region)
				local LLx, LLy = ApplyTransform(0, 1, region)
				local URx, URy = ApplyTransform(1, 0, region)
				local LRx, LRy = ApplyTransform(1, 1, region)
				
				foreground:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy);
				foreground:SetWidth(region:GetWidth() * progress);
				background:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy);
            end
        else
            function region:SetValue(progress)
                region.progress = progress;
				
				local ULx , ULy  = ApplyTransform(0, 0, region)
				local LLx , LLy  = ApplyTransform(0, 1, region)
				local URx , URy  = ApplyTransform(progress, 0, region)
				local URx_, URy_ = ApplyTransform(1, 0, region)
				local LRx , LRy  = ApplyTransform(progress, 1, region)
				local LRx_, LRy_ = ApplyTransform(1, 1, region)
				
				foreground:SetTexCoord(ULx, ULy, LLx, LLy, URx , URy , LRx , LRy );
				foreground:SetWidth(region:GetWidth() * progress);
				background:SetTexCoord(ULx, ULy, LLx, LLy, URx_, URy_, LRx_, LRy_);
            end
        end
    end
    local function orientHorizontalInverse()
        foreground:ClearAllPoints();
        foreground:SetPoint("RIGHT", region, "RIGHT");
        region.orientation = "HORIZONTAL";
        if(data.compress) then
            function region:SetValue(progress)
                region.progress = progress;
				
				local ULx, ULy = ApplyTransform(0, 0, region)
				local LLx, LLy = ApplyTransform(0, 1, region)
				local URx, URy = ApplyTransform(1, 0, region)
				local LRx, LRy = ApplyTransform(1, 1, region)
				
				foreground:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy);
				foreground:SetWidth(region:GetWidth() * progress);
				background:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy);
            end
        else
            function region:SetValue(progress)
                region.progress = progress;
				
				local ULx , ULy  = ApplyTransform(1-progress, 0, region)
				local ULx_, ULy_ = ApplyTransform(0, 0, region)
				local LLx , LLy  = ApplyTransform(1-progress, 1, region)
				local LLx_, LLy_ = ApplyTransform(0, 1, region)
				local URx , URy  = ApplyTransform(1, 0, region)
				local LRx , LRy  = ApplyTransform(1, 1, region)
				
				foreground:SetTexCoord(ULx , ULy , LLx , LLy , URx, URy, LRx, LRy);
				foreground:SetWidth(region:GetWidth() * progress);
				background:SetTexCoord(ULx_, ULy_, LLx_, LLy_, URx, URy, LRx, LRy);
            end
        end
    end
    local function orientVertical()
        foreground:ClearAllPoints();
        foreground:SetPoint("BOTTOM", region, "BOTTOM");
        region.orientation = "VERTICAL_INVERSE";
        if(data.compress) then
            function region:SetValue(progress)
                region.progress = progress;
				
				
				local ULx, ULy = ApplyTransform(0, 0, region)
				local LLx, LLy = ApplyTransform(0, 1, region)
				local URx, URy = ApplyTransform(1, 0, region)
				local LRx, LRy = ApplyTransform(1, 1, region)
				
				foreground:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy);
				foreground:SetHeight(region:GetHeight() * progress);
				background:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy);
            end
        else
            function region:SetValue(progress)
                region.progress = progress;
				
				local ULx , ULy  = ApplyTransform(0, 1-progress, region)
				local ULx_, ULy_ = ApplyTransform(0, 0, region)
				local LLx , LLy  = ApplyTransform(0, 1, region)
				local URx , URy  = ApplyTransform(1, 1-progress, region)
				local URx_, URy_ = ApplyTransform(1, 0, region)
				local LRx , LRy  = ApplyTransform(1, 1, region)
				
				foreground:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy);
				foreground:SetHeight(region:GetHeight() * progress);
				background:SetTexCoord(ULx_, ULy_, LLx, LLy, URx_, URy_, LRx, LRy);
            end
        end
    end
    local function orientVerticalInverse()
        foreground:ClearAllPoints();
        foreground:SetPoint("TOP", region, "TOP");
        region.orientation = "VERTICAL";
        if(data.compress) then
            function region:SetValue(progress)
                region.progress = progress;
				
				
				local ULx, ULy = ApplyTransform(0, 0, region)
				local LLx, LLy = ApplyTransform(0, 1, region)
				local URx, URy = ApplyTransform(1, 0, region)
				local LRx, LRy = ApplyTransform(1, 1, region)
				
				foreground:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy);
				foreground:SetHeight(region:GetHeight() * progress);
				background:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy);
            end
        else
            function region:SetValue(progress)
                region.progress = progress;
				
				local ULx , ULy  = ApplyTransform(0, 0, region)
				local LLx , LLy  = ApplyTransform(0, progress, region)
				local LLx_, LLy_ = ApplyTransform(0, 1, region)
				local URx , URy  = ApplyTransform(1, 0, region)
				local LRx , LRy  = ApplyTransform(1, progress, region)
				local LRx_, LRy_ = ApplyTransform(1, 1, region)
				
				foreground:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy);
				foreground:SetHeight(region:GetHeight() * progress);
				background:SetTexCoord(ULx, ULy, LLx_, LLy_, URx, URy, LRx_, LRy_);
            end
        end
    end
    
    if(data.orientation == "HORIZONTAL_INVERSE") then
        orientHorizontalInverse();
    elseif(data.orientation == "HORIZONTAL") then
        orientHorizontal();
    elseif(data.orientation == "VERTICAL_INVERSE") then
        orientVerticalInverse();
    elseif(data.orientation == "VERTICAL") then
        orientVertical();
    end
    
    region:SetValue(3/5);
end

local function createIcon()
    local data = {
        foregroundTexture = "Interface\\AddOns\\WeakAuras\\Media\\SpellActivationOverlays\\Eclipse_Sun",
        sameTexture = true,
        backgroundOffset = 2,
        blendMode = "BLEND",
        width = 200,
        height = 200,
        orientation = "VERTICAL",
        alpha = 1.0,
        foregroundColor = {1, 1, 1, 1},
        backgroundColor = {0.5, 0.5, 0.5, 0.5}
    };
    
    local thumbnail = createThumbnail(UIParent);
    modifyThumbnail(UIParent, thumbnail, data, nil, 32);
    
    thumbnail.elapsed = 0;
    thumbnail:SetScript("OnUpdate", function(self, elapsed)
        thumbnail.elapsed = thumbnail.elapsed + elapsed;
        if(thumbnail.elapsed > 4) then
            thumbnail.elapsed = thumbnail.elapsed - 4;
        end
        thumbnail.region:SetValue((4 - thumbnail.elapsed) / 4);
    end);
    
    return thumbnail;
end

WeakAuras.RegisterRegionOptions("progresstexture", createOptions, createIcon, L["Progress Texture"], createThumbnail, modifyThumbnail, L["Shows a texture that changes based on duration"]);
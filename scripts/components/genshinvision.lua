local function oninactive ( self, inactive )
  if inactive then
      self.inst:AddTag( "vision_inactive" )
  else
      self.inst:RemoveTag( "vision_inactive" )
  end
end

local GenshinVision = Class (
  function ( self, inst )
    self.inst = inst
    self.inactive = true
  end,
  nil,
  {
    inactive = oninactive,
  }
)

function GenshinVision:OnRemoveFromEntity ()
  self.inst:RemoveTag( "vision_inactive" )
end

function GenshinVision:CanCast ( doer, target, pos )
  return self.inactive and ( self.CanCastFn == nil or self.CanCastFn( self.inst, doer, target, pos ) )
end

function GenshinVision:CastVision ( doer, target, pos )
  if self.DoCastVision ~= nil and self.inactive then
    local success, reason = self.DoCastVision( self.inst, doer, target, pos )
    return success, reason
  end

  return false
end

return GenshinVision
local function oninactive ( self, inactive )
  if inactive then
      self.inst:AddTag( "vision_inactive" )
  else
      self.inst:RemoveTag( "vision_inactive" )
  end
end

local UsableVision = Class (
  function ( self, inst )
    self.inst = inst
    self.inactive = true
  end,
  nil,
  {
    inactive = oninactive,
  }
)

function UsableVision:OnRemoveFromEntity ()
  self.inst:RemoveTag( "vision_inactive" )
end

function UsableVision:CanCast ( doer, target, pos )
  return self.inactive and ( self.CanCastFn == nil or self.CanCastFn( self.inst, doer, target, pos ) )
end

function UsableVision:CastSpell ( doer, target, pos )
  if self.DoCastSpell ~= nil and self.inactive then
    local success, reason = self.DoCastSpell( self.inst, doer, target, pos )
    return success, reason
  end

  return false
end

return UsableVision
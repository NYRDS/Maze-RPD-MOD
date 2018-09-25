local RPD = require "scripts/lib/commonClasses"
 local mob = require"scripts/lib/mob"
 return mob.init({
    interact = function(self, chr)
        local ownPos  = self:getPos()
        local newPos = chr:getPos()
         self:move(newPos)
        self:getSprite():move(ownPos, newPos)
         chr:move(ownPos)
        chr:getSprite():move(newPos, ownPos)
    end
})
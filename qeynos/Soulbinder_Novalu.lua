function event_say(e)
    if(e.message:findi("hail")) then
        e.self:Say("Greetings " .. e.other:GetCleanName() .. ". When a hero of our world is slain their soul returns to the place it was last bound and the body is reincarnated. As a member of the Order of Eternity it is my duty to [bind your soul] to this location if that is your wish.");

        RechargeItems(e);

        e.other:Heal();
        e.other:SetMana(e.other:GetMaxMana());
        e.self:CastSpell(278,e.other:GetID(),0,1); -- Spell: Spirit of Wolf

    elseif(e.message:findi("vial")) then
        e.other:SummonCursorItem(14402);

    elseif(e.message:findi("bind")) then
        e.self:Say("Binding your soul. You will return here when you die.");
        e.self:CastSpell(2049,e.other:GetID(),0,1); -- Spell: Bind Affinity
    end
end

function event_trade(e)
    local item_lib = require("items");
    item_lib.return_items(e.self, e.other, e.trade)
end

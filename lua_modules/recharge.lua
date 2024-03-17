function RechargeItems(e)
    inv = e.other:GetInventory();

    for invSlot=0,339 do
        inst = inv:GetItem(invSlot);
        if inst.valid then
            RechargeItem(e, inst);
        end
    end
end

function RechargeItem(e, inst)
    item = inst:GetItem();
    maxCharges = item:MaxCharges();
    clickType = item:Click_Type();
    if maxCharges > 0 and clickType ~= 0 then
        inst:SetCharges(maxCharges);
        e.self:Say("I have recharged your " .. item:Name() .. ".");
    end
end

-- Enable prod modules for all titanium plate and ore recipes

local util = require("data-util");

for i, recipe in pairs(util.me.recipes) do
  if data.raw.recipe[recipe] then
    for j, module in pairs(data.raw.module) do
      if module.effect then
        for effect_name, effect in pairs(module.effect) do
          if effect_name == "productivity" and effect.bonus > 0 and module.limitation and #module.limitation > 0 then
            table.insert(module.limitation, recipe)
          end
        end
      end
    end
  end
end


-- FE+ allows modules for Titanium ore, we can't do that.
if mods["FactorioExtended-Plus-Core"] then
  for j, module in pairs(data.raw.module) do
    if module.limitation and #module.limitation > 0 then
      for i=1,#module.limitation,1 do
        if module.limitation[i] == "titanium-ore" then
          table.remove(module.limitation, i)
          break
        end
      end
    end
  end
end

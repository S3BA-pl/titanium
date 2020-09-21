-- Matter recipes for Krastorio2
if mods["Krastorio2"] then
local matter = require("__Krastorio2__/lib/public/data-stages/matter-util")

data:extend(
{
  {
    type = "technology",
    name = "titanium-matter-processing",
    icons =
    {
      {
        icon =   "__Krastorio2__/graphics/technologies/matter-stone.png",
        icon_size = 128,
      },
      {
        icon = "__bztitanium__/graphics/icons/titanium-ore.png",
        icon_size = 32,
        scale = 1.7,
      }
    },
    prerequisites = {"kr-matter-processing"},
    unit =
		{
			count = 350,
			ingredients = 
			{
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
				{"matter-tech-card", 1}				
			},
			time = 45
		}
  },
})

local titanium_ore_matter = 
	{
		item_name = "titanium-ore",
		minimum_conversion_quantity = 10, 
		matter_value = 8,
		energy_required = 1,
		need_stabilizer = true,
		unlocked_by_technology = "titanium-matter-processing"
	}
matter.createMatterRecipe(titanium_ore_matter)


local titanium_plate_matter = 
	{
		item_name = "titanium-ore",
		minimum_conversion_quantity = 10, 
		matter_value = 14,
		energy_required = 1,
		need_stabilizer = true,
		unlocked_by_technology = "titanium-matter-processing"
	}
matter.createMatterRecipe(titanium_ore_matter)




end

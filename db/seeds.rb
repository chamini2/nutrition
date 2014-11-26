snacks = [
    ["Cucumber Slices",               6.8  ] ,
    ["Carrot Sticks",                 27.5 ] ,
    ["Tangerine Slices",              43.1 ] ,
    ["Applesauce",                    52.5 ] ,
    ["Celery Sticks w/ Cream Cheese", 54.4 ] ,
    ["Grapes",                        56.8 ] ,
    ["Dried Apricots",                77.4 ] ,
    ["Apple Slices",                  81.4 ] ,
    ["Pretzels",                      108  ] ,
    ["Oil-Popped Popcorn",            110  ] ,
    ["Graham Crackers",               118.5] ,
    ["Jelly Beans",                   121.1] ,
    ["Raisins",                       123.8] ,
    ["Trail Mix",                     131  ] ,
    ["BBQ Chips",                     139.2] ,
    ["Tortilla Chips",                142  ] ,
    ["Cheese n Crackers",             142.6] ,
    ["Chocolate Pudding",             150.3] ,
    ["Cheese Puffs",                  157.1] ,
    ["Cashews",                       162.7] ,
    ["Sunflower Seeds",               165  ] ,
    ["Peanuts",                       165.8] ,
    ["Colby Cheese Cubes",            167.5] ,
    ["Beef Jerky",                    174.4] ,
    ["Apple Slices w/Peanut Butter",  176.3] ,
    ["Chocolate Bar",                 225.7] ,
    ["Chocolate Chip Cookies",        236.2] ,
    ["Doughnut",                      250.2] ,
    ["Chocolate Ice Cream",           285.1] ,
    ["Fig Bars",                      334.1] ,
    ["French Fries",                  458.3]
]

snacks.each do |name, calories|
  Snack.create( name: name, calories: calories, approved: true )
end

activities = [
    ["nadar",       12.5, "minutos"] ,
    ["caminar",     3.57, "minutos"] ,
    ["abdominales", 9.8,  "minutos"] ,
    ["bailar",      5.52, "minutos"] ,
    ["bicicleta",   8.33, "minutos"]
]

activities.each do |description, calories, unit|
  Activity.create( description: description, calories: calories, unit: unit, approved: true )
end

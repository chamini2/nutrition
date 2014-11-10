# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Snack.create([ {name: "Cucumber Slices", calories: 6.8  }
             , {name: "Carrot Sticks", calories: 27.5 }
             , {name: "Tangerine Slices", calories: 43.1 }
             , {name: "Applesauce", calories: 52.5 }
             , {name: "Celery Sticks w/ Cream Cheese", calories: 54.4 }
             , {name: "Grapes", calories: 56.8 }
             , {name: "Dried Apricots", calories: 77.4 }
             , {name: "Apple Slices", calories: 81.4 }
             , {name: "Pretzels", calories: 108  }
             , {name: "Oil-Popped Popcorn", calories: 110  }
             , {name: "Graham Crackers", calories: 118.5}
             , {name: "Jelly Beans", calories: 121.1}
             , {name: "Raisins", calories: 123.8}
             , {name: "Trail Mix", calories: 131  }
             , {name: "BBQ Chips", calories: 139.2}
             , {name: "Tortilla Chips", calories: 142  }
             , {name: "Cheese n Crackers", calories: 142.6}
             , {name: "Chocolate Pudding", calories: 150.3}
             , {name: "Cheese Puffs", calories: 157.1}
             , {name: "Cashews", calories: 162.7}
             , {name: "Sunflower Seeds", calories: 165  }
             , {name: "Peanuts", calories: 165.8}
             , {name: "Colby Cheese Cubes", calories: 167.5}
             , {name: "Beef Jerky", calories: 174.4}
             , {name: "Apple Slices w/Peanut Butter", calories: 176.3}
             , {name: "Chocolate Bar", calories: 225.7}
             , {name: "Chocolate Chip Cookies", calories: 236.2}
             , {name: "Doughnut", calories: 250.2}
             , {name: "Chocolate Ice Cream", calories: 285.1}
             , {name: "Fig Bars", calories: 334.1}
             , {name: "French Fries", calories: 458.3}
             ])

Activity.create([ {description: "caminar", calories: 1, unit: "pasos"}
                , {description: "correr",  calories: 1, unit: "metros"}
                , {description: "jugar tennis", calories: 0.1, unit: "minutos"}
                ])

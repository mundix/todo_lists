# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

carly = User.create username: "fiorina",password_digest: "fiorina"
carly.profile.create first_name: "Carly", last_name: "Fiorina", gender:"female",birth_year: 1954

trump = User.create username: "trump",password_digest: "trump"
trump.profile.create first_name: "Donald", last_name: "Trump", gender:"male",birth_year: 1946

carson = User.create username: "carson",password_digest: "carson"
carson.profile.create first_name: "Ben", last_name: "Carson", gender:"male",birth_year: 1951

clinton = User.create username: "clinton",password_digest: "clinton"
clinton.profile.create first_name: "Hillary", last_name: "Clinton", gender:"male",birth_year: 1947

carly.todo_lists.create list_name:"Carly", list_due_date: DateTime.now.strftime("%Y-%d-%m")
trump.todo_lists.create list_name:"Donald", list_due_date: DateTime.now.strftime("%Y-%d-%m")
carson.todo_lists.create list_name:"Ben", list_due_date: DateTime.now.strftime("%Y-%d-%m")
clinton.todo_lists.create list_name:"Hillary", list_due_date: DateTime.now.strftime("%Y-%d-%m")

carly.todo_lists.todo_items.create [
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 1", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 2", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 3", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 4", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 5", description: "Description",  }
                                  ]
trump.todo_lists.todo_items.create [
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 6", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 7", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 8", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 9", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 10", description: "Description",  }
                                  ]

carson.todo_lists.todo_items.create [
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 11", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 12", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 13", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 14", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 15", description: "Description",  }
                                  ]
clinton.todo_lists.todo_items.create [
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 16", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 17", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 18", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 19", description: "Description",  },
    { due_date: DateTime.now.strftime("%Y-%d-%m"), title: "Item 20", description: "Description",  }
                                  ]
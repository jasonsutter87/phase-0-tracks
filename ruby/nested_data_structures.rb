pizza = {
	cheese:{
		offical_name: "Jason's Basic Cheese Pizza",
		ingredients: ["Dough", "Marinara Sauce", "Mozzarella Cheese", "Basil Flakes", "Chopped Fresh Oregano"],
		optional: "Crushed Red Pepper"
	},
	pepperoni:{
		offical_name: "Classic Pepperoni Pizza",
		ingredients: ["Dough", "Marinara Sauce", "Mozzarella Cheese", "Double Pepperoni","Basil Flakes", "Chopped Fresh Oregano"],
		optional: "Crushed Red Pepper"
	},
	bbq:{
		offical_name: "BBQ All-Star",
		ingredients: ["Dough", "BBQ Sauce", "Honey", "Mozzarella Cheese", "Red Onion","Green Onion", "Chicken"],
		optional: "Crushed Red Pepper"
	},
	chicken_garlic:{
		offical_name: "Moms Favorites Pizza",
		ingredients: ["Dough", "White Sauce", "Parmesan Cheese", "Mozzarella Cheese", "Red Onion", "Green Onion", "Chicken", "Garlic", "Mushrooms", "Tomatoes"],
		optional: "Crushed Red Pepper"
	},
	cajun_chicken:{
		offical_name: "Kickn Cajun Chicken Piza",
		ingredients: ["Dough", "White Sauce", "Parmesan Cheese", "Mozzarella Cheese", "Red Onion", "Green Onion", "Cajun Chicken", "Garlic", "Tomatoes"],
		optional: "Crushed Red Pepper"
	}
}


#Call Everything about our Hash Pizza (This calls everything....but is sort of unreadable)
#p pizza

#Call Everything about our Cheese Pizza (This calls everything....and it is more readable)
p pizza[:cheese]

#Calls  the Offical Name of the Cheese pizza
p pizza[:cheese][:offical_name]

#Calls the first ingredient for the cheese pizza.  
p pizza[:cheese][:ingredients][0]
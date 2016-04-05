/* Write your JS to modify the view here */
FRUIT_BEARING_AGE = 5;

// ### ONE ###

// POLUTING THIS
// Definition imply returning
// function createTree (){
// 	this.age = 0
// 	this.height = 0
// 	this.oranges = []
// 	this.orangeCount = 0

// 	this.grow = function(){
// 		this.age +=1;
// 		this.height += 10;
// 		if(this.age >= FRUIT_BEARING_AGE)
// 			addOranges()
// 	}

// 	this.addOranges = function(){
// 		var rand = Math.floor(Math.random() * (10 - 1)) + 1;

// 		for(var i=0; i<rand; i++){
// 			this.oranges.push("Orange")
// 		}

// 		this.orangeCount += this.oranges.length;
// 	}

// 	this.dropOrange = function(){
// 		return this.oranges.pop()
// 	}

// 	// CRAZY...
// 	return self
// }

// ### TWO ###

// Using this as parameter
// function createTree (){
// 	var age = 0
// 	var height = 0
// 	var oranges = []
// 	var orangeCount = 0

// 	var addOranges = function(tree){
// 		var rand = Math.floor(Math.random() * (10 - 1)) + 1;

// 		for(var i=0; i<rand; i++){
// 			tree.oranges.push("Orange")
// 		}

// 		tree.orangeCount += tree.oranges.length;
// 		console.log('this in addOranges', this)
// 	}

// 	var grow = function(){
// 		this.age +=1;
// 		this.height += 10;
// 		if(this.age >= FRUIT_BEARING_AGE)
// 		 	addOranges(this)
// 		console.log('this in grow', this)
// 	}

// 	var dropOrange = function(){
// 		return this.oranges.pop()
// 	}

// 	return 	{
// 				age: age,
// 				height: height,
// 				oranges: oranges,
// 				orangeCount: orangeCount,
// 				grow: grow,
// 				dropOrange: dropOrange
// 			}
// }

// ### THREE ###

// // RETURNING AN OBJECT
// function createTree (){
// 	var tree = {
// 		age: 0,
// 		height: 0,
// 		oranges: [],
// 		orangeCount: 0,
// 		grow: function(){
// 			this.age +=1;
// 			this.height += 10;
// 			if(this.age >= FRUIT_BEARING_AGE)
// 			 	this.addOranges()
// 		},
// 		addOranges: function(){
// 			var rand = Math.floor(Math.random() * (10 - 1)) + 1;

// 			for(var i=0; i<rand; i++){
// 				this.oranges.push("Orange")
// 			}

// 			this.orangeCount += this.oranges.length;
// 		},
// 		dropOrange: function(){
// 			return this.oranges.pop()
// 		}
//  	}
// 	return tree
// }


// 'OO' JS
function Tree(){
	this.age = 0ç
	this.height = 0
	this.oranges = []
	this.orangeCount = 0
}

Tree.prototype.grow = function(){
	this.age +=1;
	this.height += 10;
	if(this.age >= FRUIT_BEARING_AGE)
	 	this.addOranges()
}

Tree.prototype.addOranges = function(){
	var rand = Math.floor(Math.random() * (10 - 1)) + 1;

	for(var i=0; i<rand; i++){
		this.oranges.push("Orange")
	}

	this.orangeCount += this.oranges.length;
}

Tree.prototype.dropOrange = function(){
	return this.oranges.pop()
}

function createTree (){
	return new Tree
}
 	





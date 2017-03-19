// Import the ORM to create functions that will interact with the database.
var orm = require("../config/orm.js");

var arepa = {
	all: function(cb){
		orm.all("arepas", function(res){
			cb(res);
		});
	},
 	// The variables cols and vals are arrays.
 	create: function(cols, vals, cb){
		orm.create("arepas", cols, vals, function(res){
			cb(res);
		});
	},
	update: function(objColVals, condition, cb){
		orm.update("arepas", objColVals, condition, function(res){
			cb(res);
		});
	}
};


// Export the database functions for the controller (arepaController.js).
module.exports = arepa;

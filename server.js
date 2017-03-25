// Dependencies
// =============================================================
var express = require("express");
var methodOverride = require("method-override");
var bodyParser = require("body-parser");

// Sets up the Express App
// =============================================================
var PORT = 3000;

// var app = express();
/*
	did this instead of 
		var app = express();
	because now I can include this file and get the app

	this is useful in the connection.js file
*/
var app = module.exports = express(); 

// Serve static content for the app from the "public" directory in the application directory.
app.use(express.static(process.cwd() + "/public"));
// Sets up the Express app to handle data parsing
// =============================================================
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.text());
app.use(bodyParser.json({ type: "application/vnd.api+json" }));

// Override with POST having ?_method=DELETE
app.use(methodOverride("_method"));

// Set Handlebars.
var exphbs = require("express-handlebars");

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

// Import routes and give the server access to them.
// =============================================================
var routes = require("./controllers/arepas_controller.js");

app.use("/", routes);

// Starts the server to begin listening
// =============================================================
app.listen(process.env.PORT || PORT, function() {
  console.log("App listening on PORT " + PORT);
});

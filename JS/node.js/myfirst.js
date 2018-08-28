// bulilt-in Events module : create-, fire-, and listen for- events
var events = require('events');
// EventEmitter :  all event properties and methods are an instance of an EventEmitter object
// : access these properties and methods
var eventEmitter = new events.EventEmitter();
// Create an event handler
var myEventHandler = function () {
    console.log('I hear a scream!');
}
// on() : assign the event handler to an event
eventEmitter.on('scream', myEventHandler);
//emit() : fire the 'scream' event
eventEmitter.emit('scream');

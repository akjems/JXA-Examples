JsOsaDAS1.001.00bplist00�Vscript_�
//Find Event in past hour in specific calendar. 
//the events are not in order in the Calendar.events array, therefore you need specify time frames

var Calendar = Application('Calendar') 
Calendar.reloadCalendars();

//Use the Demo calendar
usedCalendar=Application('Calendar').calendars[12]


var timeNow = new Date()
//new keyword makes Date object

var oneHour = 60 * 60 * 1000;
//Create Date object that is one hour ago timeNow.
var anHourAgo = new Date(new Date() - oneHour);



//https://stackoverflow.com/questions/38023712/comparisons-rich-queries-in-javascript-for-automation-jxa-whose
var recentDemoEvents = Application('Calendar').calendars[12].events.whose({
	_and: [
		{ startDate: { _greaterThan: anHourAgo }}, 
		{ startDate: { _lessThan: timeNow}}
	]
});




//Array of event functions that started in the past hour. The event function has properties that are objects.
recentDemoEvents();

//Single event that started in past hour
typeof(recentDemoEvents[0]().endDate());

recentDemoEvents[0]()
//Result:Application("Calendar").calendars.byId("3E7ADB20-0113-4FD7-B04B-2AA470B83380").events.byId("A9154DCD-9E76-4383-8ABC-5062D578EE5E")

var event = recentDemoEvents[0](); //You can create new objects by calling class constructors as functions 
event                              
jscr  ��ޭ
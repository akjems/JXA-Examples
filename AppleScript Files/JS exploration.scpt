JsOsaDAS1.001.00bplist00�Vscript_�
//array of object's enumerable string properties
Object.keys(Application('Calendar').calendars[12].events)
//Result : ["0", "1", "2", "3", "4", "5"]


//Get name of calendar 12
Application('Calendar').calendars[12].name()
//Result: "Demo"

//Summary is the name of the event
Application('Calendar').calendars[12].events.summary()
//Result: ["Demo Project 1 - makeing video", "Cheese Making - Researching soy cheddar", "Blog Apple launchd", "Blog research ", "Automating TimeMachine Backups", "Chess"]



                               jscr  ��ޭ
JsOsaDAS1.001.00bplist00�Vscript_�// Create new Reminders List

var Reminders = Application("Reminders");

//Create new List object. Other properties are color, container, and emblem.
var newReminderList = Reminders.List({name: "TEST"});

Reminders.lists.push(newReminderList);

                              
jscr  ��ޭ
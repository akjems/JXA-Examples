JsOsaDAS1.001.00bplist00�Vscript_>// Make a new directory
var app = Application.currentApplication();
app.includeStandardAdditions = true;


var Finder = Application("Finder");



Finder.make(
	{
 		new: "folder", 
		//TODO get username folder name from system
		at: "Macintosh HD:Users:adkj",
		withProperties: 
		{ 
			name: "Made by JXA"
 
		}
	}
);                              Tjscr  ��ޭ
JsOsaDAS1.001.00bplist00�Vscript_�// Script to Open a Finder Window with a folder and bring to the front
// Requires ~/Demo

var Finder = Application('Finder');

var demoDir = "~/Demo" 

//Resolves the ~ to be the home directory path
var fullDemoDir = $(demoDir).stringByStandardizingPath.js

//Opens Finder window containing ~/Demo
// Brings Path object into view
Finder.reveal(Path(fullDemoDir));

//Brings finder to front
Finder.activate();                              �jscr  ��ޭ
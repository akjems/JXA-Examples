JsOsaDAS1.001.00bplist00�Vscript_+
// Looking at the properties of diskItems

var Finder = Application("Finder");
var SystemEvents = Application("System Events");

var sourcePathStr = "~/Demo/sampleDir"
var expandedSourcePathStr = $(sourcePathStr).stringByStandardizingPath.js
//Result: "/Users/adkj/Demo/sampleDir"

// function sourceFolder
var sourceFolder = SystemEvents.aliases.byName(expandedSourcePathStr);
//Result: Application("System Events").aliases.byName("/Users/adkj/Demo/sampleDir")

//function container
var container = sourceFolder.container();
//Result: Application("System Events").folders.byName("Macintosh HD:Users:adkj:Demo")

// String containerPath
var containerPath = container.path();
//Result: "Macintosh HD:Users:adkj:Demo"
// Create an array of items functions to be processed
var items = SystemEvents.aliases.byName(sourcePathStr).diskItems;
items[1]()
//Result: Path("/Users/adkj/Demo/sampleDir/samplefile.rtf")

items[1].class()
//Result: "file"

items[1].name()
//Result: "samplefile.rtf"

items[0].path()
//Result: "Macintosh HD:Users:adkj:Demo:sampleDir:.DS_Store"


                              A jscr  ��ޭ
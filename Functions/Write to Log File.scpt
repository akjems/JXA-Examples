JsOsaDAS1.001.00bplist00�Vscript_�
// Required to write
var app = Application.currentApplication()
app.includeStandardAdditions = true

//Required to get user name
var SystemEvents = Application('System Events') 

//Requires full path
logFile=SystemEvents.currentUser.homeDirectory() + "/test.log"
currentUser=SystemEvents.currentUser.name()


function writeToLog(msg, file) {
    try {

        // Convert the file to a string
        var fileString = file.toString()

        // Open the file for writing
        var openedFile = app.openForAccess(Path(fileString), { writePermission: true })
		
		var d = new Date()
		isoDate = new Date(d.getTime() - (d.getTimezoneOffset() * 60000)).toISOString();
		logEntry = "\n" + isoDate + " " + currentUser + " " + msg
		//logEntry = d.toISOString().concat(" ", text, "\n")
        // Write the new content to the file
        app.write(logEntry, { to: openedFile, startingAt: app.getEof(openedFile) })

        // Close the file
        app.closeAccess(openedFile)

        // Return a boolean indicating that writing was successful
        return true
    }
  catch(error){

        try {
            // Close the file
            app.closeAccess(file)
        }
        catch(error) {
            // Report the error is closing failed
            console.log(`Couldn't close file: ${error}`)
        }

        // Return a boolean indicating that writing was successful
        return false
    }
}

writeToLog("Log message", logFile, true)                              �jscr  ��ޭ
JsOsaDAS1.001.00bplist00�Vscript_S// Return the POSIX path of the folder hosting this script / app.
// E.g., from within '/foo/bar.scpt', returns '/foo'.
function myPath() {
    var app = Application.currentApplication(); app.includeStandardAdditions = true
    return $(app.pathTo(this).toString()).stringByDeletingLastPathComponent.js
}

// Return the filename root (filename w/o extension) of this script / app.
// E.g., from within '/foo/bar.scpt', returns 'bar'.
// (Remove `.stringByDeletingPathExtension` if you want to retain the extension.)
function myName() {
    var app = Application.currentApplication(); app.includeStandardAdditions = true
    return $(app.pathTo(this).toString()).lastPathComponent.stringByDeletingPathExtension.js
}


// source https://stackoverflow.com/questions/28773207/how-to-get-posix-path-of-the-current-scripts-folder-in-javascript-for-automatio                              i jscr  ��ޭ
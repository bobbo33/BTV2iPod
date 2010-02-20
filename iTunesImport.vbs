'iTunesImport.vbs
'v1.0 2009-08-29
'Adds specified file or folder to specified iTunes playlist
'code credit: http://www.vandeputte.org/2006_07_01_archive.html

'debugging disabled so it will continue to run when used as a scheduled job
boolDebug = false

If boolDebug = false Then
      On Error Resume Next
End If

'check for a valid command line input
If WScript.Arguments.Count <> 2 And boolDebug = true Then
   MsgBox "Please input valid input file/folder name and playlist name."
   WScript.Quit
End If
strInput = WScript.Arguments(0)
strPlaylist = WScript.Arguments(1)

'check that the input file exists
Set objFSO = CreateObject("Scripting.FileSystemObject")
If objFSO.FileExists(strInput) = False And objFSO.FolderExists(strInput) = False And boolDebug = true Then
   MsgBox "File/folder not found: " & vbNewLine & mpgFile
   WScript.Quit
End If

'Connect to iTunes
Set objApp = CreateObject("iTunes.Application")
Set colSources = objApp.Sources
Set objLibrary = colSources.ItemByName("Library")
Set colPlaylists = objLibrary.Playlists

'Add file/folder to playlist (create if necessary)
Set objPlaylist = colPlaylists.ItemByName(strPlaylist)
If objPlaylist is Nothing Then
   Set objPlaylist = objApp.CreatePlaylist(strPlaylist)
End if
objPlaylist.AddFile(strInput)

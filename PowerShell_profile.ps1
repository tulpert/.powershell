

# Aliases
# Powershell "Aliases" is just subtitutes for other commands. You can't set an alias to be command with variables.
# Therefore, I setup functions until Microsoft come to their senses.

# Run an application with elevated privileges
# Note: applications, not powershell commands.
function sudo {
	Param (
		[string]$Command = "powershell"
	)

	Start-Process -Verb RunAs $Command
}

# shutdown the machine
function poweroff { shutdown /s /t 0 }

# Make the terminal more bearable
if ( $PSVersionTable.PSVersion.Major -ge 5 ) {
  Set-PSReadlineKeyHandler -Chord 'Ctrl-a' -Function BeginningOfLine
  Set-PSReadlineKeyHandler -Chord 'Ctrl-e' -Function EndOfLine
  Set-PSReadlineKeyHandler -Chord 'Ctrl-w' -Function BackwardKillWord
  Set-PSReadlineKeyHandler -Chord 'Ctrl-k' -Function ForwardDeleteLine
  Set-PSReadlineKeyHandler -Chord 'Ctrl-u' -Function BackwardDeleteLine
  Set-PSReadlineKeyHandler -Chord 'Ctrl-y' -Function Yank
}

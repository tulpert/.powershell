

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
function sudo {
	Param (
		[string]$Command = "powershell"
	)

	Start-Process -Verb RunAs $Command
}
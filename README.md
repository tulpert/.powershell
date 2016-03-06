My Powershell profile settings

These are never quite finished, but I do like having my powershell do the things I like.
I like PS mimicking Linux command lines for stuff that's not built in. Like for example sudo. Why is there no SUDO command, Microsoft?
Probably security. Probably a good idea as well. Well, therefore I make my own SUDO function.

Note that I save my profile in $home\.powershell\PowerShell_profile.ps1
That means that in my $PROFILE file is one line; 
. $home\.powershell\PowerShell_profile.ps1

This means that even if Microsoft changed $PROFILE to point to OneDrive on recent Windows 10 releases I do not have to have my Powershell profile saved on OneDrive.
If you are on earlier releases which places the $PROFILE in $home\Documents\WindowsPowershell, you are free to do that as well. I just don't like my Documents folder cluttered with non-documents.


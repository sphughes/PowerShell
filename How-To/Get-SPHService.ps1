<#

.SYNOPSIS
   ~ A quick description
     ie. Get Processes

.DESCRIPTION
   ~ A more Detailed Description
     ie. This gets the Services on the Named Computer

.PARAMETER PROC
   ~ Desciption of the 1st Parameter
     ie. This is the Service

.PARAMETER COMP
   ~ Desciption of the 2nd Parameter
     ie. This is the Computer Name

.INPUTS
   ~ Lists the .NET Framework classes of objects the function will accept as input. (if any)
   N/A

.OUTPUTS
   ~ Lists the .NET Framework classes of objects the function will emit as output. (if any)
   N/A

.NOTES
~ Put your misc notes here
    Get-SPHServices.ps1
    A Simple Example Script with Help Examples
    By Shaun P. Hughes
    shaunyyyzzzzs@xyzzy.com

.EXAMPLE
   .\Get-SPHService -PROC BITS -COMP DC01
   Check the "BITS" service on Computer "DC01"

.EXAMPLE
  .\Get-SPHService -COMP .
  This gets all services on the local computer

.LINK
~ Put your links to reference materials here
   References
     http://sphughes.com
     http://blogs.technet.com/b/heyscriptingguy/archive/2010/01/07/hey-scripting-guy-january-7-2010.aspx

#>

##
## UNCOMMENT the line below and the end bracket to turn this script into a function
# Function Get-SPHService{

[CmdLetBinding()]     # NOTE - This adds common parameters and is optional

param(
 
    $PROC,            # NOTE - The Comma here before the next parameter

    [Parameter(Mandatory = $TRUE)]

    [String]$COMP

)

Get-Service -Name $PROC -ComputerName $COMP

## UNCOMMENT the below ending bracket to turn into a function
#}
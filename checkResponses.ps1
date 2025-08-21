function checkResponses {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$UserInput 
        )
            
            $jsonObject = Get-Content -Path ".\Documents\WindowsPowerShell\my_Functions\newProject\smart_responses.json" -Raw | ConvertFrom-Json
            
            
            if ($jsonObject -contains $UserInput) {
                Write-Host "Go ahead say something original, Loser"
            }    
    } 


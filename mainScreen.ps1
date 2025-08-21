function checkResponses {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$UserInput 
        )
            
            $jsonObject = Get-Content -Path ".\smart-responses.json" -Raw | ConvertFrom-Json
    
    function UserComment{
        param (
            [string]$UserInput
        )
            
    
            
            if ($UserInput -eq $jsonObject) {
                Write-Host "Go ahead say something original, Loser"
            }    
    } 
}
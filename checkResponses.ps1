function checkResponses {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$UserInput 
        )
            
            $jsonObject = Get-Content -Path ".\Documents\WindowsPowerShell\my_Functions\newProject\smart_responses.json" -Raw | ConvertFrom-Json
            $data = $jsonObject
        do {
            
            if ($jsonObject -contains $UserInput) {
                Write-Host "Go ahead say something original, Loser" -ForegroundColor Green
            }elseif(-not ($jsonObject -contains $UserInput)) {
                Write-Host "That's so WEAK!  Try again and put some effort into it." -ForegroundColor Green
                $data = [PSCustomObject]@{}
                $data += $UserInput | ConvertTo-Json 
                Set-Content -Path ".\Documents\WindowsPowerShell\my_Functions\NewProject\new_smart_responses.json" -Value $data

            } 

        
            #$UserInput = Read-Host "Come on! Say something, Loser!" 
            While ($true) {
                checkResponses 
            }
        }
        While($UserInput -ne 'q') {
            break
        }
    } 


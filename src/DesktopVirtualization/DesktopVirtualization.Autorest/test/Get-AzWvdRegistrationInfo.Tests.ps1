$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'	
if (-Not (Test-Path -Path $loadEnvPath)) {	
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'	
}	
. ($loadEnvPath)	
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzWvdRegistrationInfo.Recording.json'	
$currentPath = $PSScriptRoot	
while(-not $mockingPath) {	
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File	
    $currentPath = Split-Path -Path $currentPath -Parent	
}	
. ($mockingPath | Select-Object -First 1).FullName	

Describe 'Get-AzWvdRegistrationInfo' {	
    It 'Get RegInfo' {	
        try{
            New-AzWvdHostPool -SubscriptionId $env.SubscriptionId `
            -ResourceGroupName $env.ResourceGroup `
            -Name $env.HostPool `
            -Location $env.Location `
            -HostPoolType 'Shared' `
            -LoadBalancerType 'DepthFirst' `
            -RegistrationTokenOperation 'Update' `
            -ExpirationTime $((get-date).ToUniversalTime().AddDays(1).ToString('yyyy-MM-ddTHH:mm:ss.fffffffZ')) `
            -Description 'des' `
            -FriendlyName 'fri' `
            -MaxSessionLimit 5 `
            -VMTemplate $null `
            -CustomRdpProperty $null `
            -Ring $null `
            -ValidationEnvironment:$false `
            -PreferredAppGroupType 'Desktop'

            $regToken = Get-AzWvdRegistrationInfo -SubscriptionId $env.SubscriptionId `
            -ResourceGroupName $env.ResourceGroup `
            -HostPoolName $env.HostPool `

            $regToken.Token | Should -Not -BeNullOrEmpty
        }
        finally{
            $hostPool = Remove-AzWvdHostPool -SubscriptionId $env.SubscriptionId `
                                -ResourceGroupName $env.ResourceGroup `
                                -Name $env.HostPool
        }
    }	
}
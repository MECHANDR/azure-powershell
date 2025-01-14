
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create an in-memory object for ComputeStartStopSchedule.
.Description
Create an in-memory object for ComputeStartStopSchedule.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20220501.ComputeStartStopSchedule
.Link
https://learn.microsoft.com/powershell/module/az.MLWorkspace/new-AzMLWorkspaceComputeStartStopScheduleObject
#>
function New-AzMLWorkspaceComputeStartStopScheduleObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20220501.ComputeStartStopSchedule')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="The compute power action.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ComputePowerAction])]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ComputePowerAction]
        $Action,
        [Parameter()]
        [string]
        $ScheduleId,
        [Parameter()]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ScheduleProvisioningState])]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ScheduleProvisioningState]
        $ScheduleProvisioningStatus,
        [Parameter()]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ScheduleStatus])]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ScheduleStatus]
        $ScheduleStatus
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20220501.ComputeStartStopSchedule]::New()

        if ($PSBoundParameters.ContainsKey('Action')) {
            $Object.Action = $Action
        }
        if ($PSBoundParameters.ContainsKey('ScheduleId')) {
            $Object.ScheduleId = $ScheduleId
        }
        if ($PSBoundParameters.ContainsKey('ScheduleProvisioningStatus')) {
            $Object.ScheduleProvisioningStatus = $ScheduleProvisioningStatus
        }
        if ($PSBoundParameters.ContainsKey('ScheduleStatus')) {
            $Object.ScheduleStatus = $ScheduleStatus
        }
        return $Object
    }
}


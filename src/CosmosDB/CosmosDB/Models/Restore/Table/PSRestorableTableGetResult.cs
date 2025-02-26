// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using Microsoft.WindowsAzure.Commands.Common.Attributes;

namespace Microsoft.Azure.Management.CosmosDB.Models
{
    public class PSRestorableTableGetResult
    {
        public PSRestorableTableGetResult()
        {
        }

        public PSRestorableTableGetResult(RestorableTableGetResult restorableTableGetResult)
        {
            if (restorableTableGetResult == null)
            {
                return;
            }

            Id = restorableTableGetResult.Id;
            Name = restorableTableGetResult.Name;
            Type = restorableTableGetResult.Type;
            _rid = restorableTableGetResult.Resource.Rid;
            OperationType = restorableTableGetResult.Resource.OperationType;
            EventTimestamp = restorableTableGetResult.Resource.EventTimestamp;
            OwnerId = restorableTableGetResult.Resource.OwnerId;
            OwnerResourceId = restorableTableGetResult.Resource.OwnerResourceId;
        }

        /// <summary>
        /// Gets the unique resource identifier of the RestorableTable resource.
        /// </summary>
        [Ps1Xml(Label = "Id", Target = ViewControl.List)]
        public string Id { get; }

        /// <summary>
        /// Gets the name of the RestorableTable resource.
        /// </summary>
        [Ps1Xml(Label = "Name", Target = ViewControl.List)]
        public string Name { get; }

        /// <summary>
        /// Gets the type of Azure resource.
        /// </summary>
        [Ps1Xml(Label = "Type", Target = ViewControl.List)]
        public string Type { get; }

        /// <summary>
        /// Gets a system generated property. A unique identifier.
        /// </summary>
        [Ps1Xml(Label = "_rid", Target = ViewControl.List)]
        public string _rid { get; private set; }

        /// <summary>
        /// Gets the operation type of this container event. Possible values
        /// include: 'Create', 'Replace', 'Delete', 'SystemOperation'
        /// </summary>
        [Ps1Xml(Label = "OperationType", Target = ViewControl.List)]
        public string OperationType { get; private set; }

        /// <summary>
        /// Gets the timestamp of this container event.
        /// </summary>
        [Ps1Xml(Label = "EventTimestamp", Target = ViewControl.List)]
        public string EventTimestamp { get; private set; }

        /// <summary>
        /// Gets the name of this restorable Table.
        /// </summary>
        [Ps1Xml(Label = "OwnerId", Target = ViewControl.List)]
        public string OwnerId { get; private set; }

        /// <summary>
        /// Gets the resource Id of this restorable Table.
        /// </summary>
        [Ps1Xml(Label = "OwnerResourceId", Target = ViewControl.List)]
        public string OwnerResourceId { get; private set; }
    }
}

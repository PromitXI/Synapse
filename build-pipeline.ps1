param(
    [string]$subscriptionId,
    [string]$workspaceName,
    [string]$pipelineName,
    [string]$artifactPath
)

# Log in to Azure
Connect-AzAccount

# Set the subscription
Select-AzSubscription -SubscriptionId $subscriptionId

# Create a new pipeline
New-AzSynapsePipeline -WorkspaceName $workspaceName -Name $pipelineName -DefinitionFile $artifactPath

Write-Output "Pipeline $pipelineName has been deployed to Azure Synapse"

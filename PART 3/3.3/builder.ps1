param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$githubUser,    

    [Parameter(Mandatory = $true, Position = 1)]
    [string]$repositoryName,

    [Parameter(Mandatory = $true, Position = 2)]
    [string]$dockerTag
)

$repositoryUrl = "https://github.com/${githubUser}/${repositoryName}"

git clone $repositoryUrl

$imageTag = "${dockerTag}:scriptver"

docker build -t $imageTag .\$repositoryName

docker push $imageTag

Remove-Item -Path $repositoryName -Force -Recurse



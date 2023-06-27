# api-gateway

## Continuous Integration

### Github Actions
#### Environment Variables

```
# Github Repository Secrets
DOCKERHUB_TOKEN : DockerHub Token
DOCKERHUB_USERNAME : DockerHub Username
PROJECT_ID : GCP Project Id
SERVICE_ACCOUNT_KEY : Service Account Key

# GIT Tag 
GIT_TAG_TYPE: ["patch", "minor", "major"]
GIT_TAG: Git tag version
```

#### Workflow

##### Continuous Integration
```
Trigger: 
- Push to develop branch
- Pull request to develop and main branches
```

##### Build and Push Image to Registry
```
Trigger:
- Push to main branch

Note: 
Commit message should contain one of the following strings 
  - to push artifact to Google Artifact Registry
      "bump", "gcp", "release"
  - to add git tags
    major.version - major release
    minor.version - minor release
    patch - empty or patch
```
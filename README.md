# ghshr-gcp-wlif
Keylessly Access GCP Resources from GitHub Self Hosted Runners.

## Description
In this tutorial I show how to access resources in Google Cloud from GitHub Workflows without using Service Account Keys.

This can be achieved thanks to a new feature of GitHub: 
* The GitHub actions OIDC

The variables in GitHub are ACTIONS_ID_TOKEN_REQUEST_URL and ACTIONS_ID_TOKEN_REQUEST_TOKEN.

This feature exposes an IDToken in the workflow's variables and in combination with Workload Identity Federation we can exchange GitHub Identities for a GCP Access Token.

## Follow it step by step on YouTube
[![Watch the tutorial on YouTube](https://img.youtube.com/vi/AvRHU-P5Cdg/0.jpg)](https://www.youtube.com/watch?v=AvRHU-P5Cdg)

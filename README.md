# pipu-deployments
Manifests for deploying all PIPU backend services

## Prerequisites
You would need to generate a secret with the following name of `google-application-credential` and key of `google-credentials.json`
You can generate it using the following command
`kubectl create secret generic google-application-credentials --from-file=google-credentials.json=your-service-account-path-to-file.json`

## To deploy all backend services of PIPU
* `kubectl apply -f .`
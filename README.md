# intro-pacman-aci-cosmosdb

<img src="https://raw.githubusercontent.com/azure-buddy/intro-pacman-aci-cosmosdb/main/featured.png" alt="Blog header">

Introduction material that shows how to host a Retro game like Pac-Man using Azure Container Instance (ACI) and Azure Cosmos DB. For instructions visit the corresponding blog at the :point_right: [Azure Buddy Website](https://azurebuddy.online/tips-tricks/intro-aci-cosmosdb/).

Credits to [Ivan Font](https://github.com/font) for developing the amazing Pac-Man `Node.JS` app.

# Sources

Currently I've forked the initial project and pushed by container image to [avwsolutions/pacman-aci-demo](https://hub.docker.com/r/avwsolutions/pacman-aci-demo).

```
docker pull avwsolutions/pacman-aci-demo
```

Or take a look into the source code [here](app/pacman/).

# Content

Below a table to easily find the resource examples you are looking for.

|   Resources  | location |
| -------- | ------- |
| Bicep / ARM Sample material for ACI | [Deployment templates ACI](arm/deployment-template-aci/)  |
| Bicep / ARM Sample material for Cosmos DB | [Deployment templates  Cosmos DB](arm/deployment-template-cdb/)  |
| Bicep / ARM Sample material for Azure Storage Account | [Deployment templates ST](arm/deployment-template-stg/)  |
| Material such as scripts for local Docker, access key retrieval and .env template  | [Local scripts& templates](local/) |
| Sample container logs | [Containerlogs.log](sample-container-logs/containerlogs.log) |

# Later improvements

Updating the actual `Node.jS` App, so it recognizes **ACI** and no related lookup errors are shown.


# Fatetube

[![Fatetube Image](.github/Fatetube.png)](https://docs.fatetube.mov)

## Quick Deploy

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Ffatetube%2Ffatetube)

[![Deploy to Cloudflare](https://deploy.workers.cloudflare.com/button)](https://deploy.workers.cloudflare.com/?url=https://github.com/fatetube/fatetube)

**NOTE: To self-host, more setup is required. Check the [docs](https://docs.fatetube.mov) to properly set up!!!!**

## Links And Resources

| Service       | Link                                            | Source Code                                            |
| ------------- | ----------------------------------------------- | ------------------------------------------------------ |
| Fatetube Docs | [docs](https://docs.fatetube.mov)                | [source code](https://github.com/fatetube/docs)        |
| Extension     | [extension](https://docs.fatetube.mov/extension) | [source code](https://github.com/fatetube/browser-ext) |
| Proxy         | [simple-proxy](https://docs.fatetube.mov/proxy)  | [source code](https://github.com/fatetube/sudo-proxy)  |
| Backend       | [backend](https://server.fifthwit.net)          | [source code](https://github.com/fatetube/backend)     |
| Frontend      | [Fatetube](https://docs.fatetube.mov/instances)  | [source code](https://github.com/fatetube/fatetube)    |
| Weblate       | [weblate](https://weblate.fatetube.mov)          |                                                        |

**_I provide these if you are not able to host yourself, though I do encourage hosting the frontend._**

## Referrers

- [FMHY (Voted as #1 streaming site of 2024, 2025)](https://fmhy.net)

## Running Locally

Type the following commands into your terminal / command line to run Fatetube locally

```bash
git clone https://github.com/fatetube/fatetube.git
cd smov
git pull
pnpm install
pnpm run dev
```

Then you can visit the local instance [here](http://localhost:5173) or, at local host on port 5173.

## Updating a Fatetube Instance

To update a Fatetube instance you can type the below commands into a terminal at the root of your project.

```bash
git remote add ufatetube https://github.com/fatetube/fatetube.git
git fetch ufatetube # Grab the contents of the new remote source
git checkout <YOUR_MAIN_BRANCH>  # Most likely this would be `origin/production`
git merge ufatetube/production
# * Fix any conflicts present during merge *
git add .  # Add all changes made during merge and conflict fixing
git commit -m "Update fatetube instance (merge ufatetube/production)"
git push  # Push to YOUR repository
```

## Contact Me / Discord

[Discord](https://discord.gg/zTxZQ4tmdj)

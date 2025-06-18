# fedora-toolbox container with codex preinstalled

### minimal command

```sh
podman run -it quay.io/gmanka/codex
```

### mount cwd to container

```sh
podman run -it --workdir=/app --volume $PWD:/app:z quay.io/gmanka/codex codex
```

### openrouter

to use openrouter you should duplicate same onpenrouter key for `OPENROUTER_API_KEY` and `OPENAI_API_KEY`, otherwise codex will not work

```sh
export OPENROUTER_API_KEY=TOKEN
export OPENAI_API_KEY=$OPENROUTER_API_KEY
export OPENAI_BASE_URL=https://openrouter.ai/api/v1
podman run -it -e OPENAI_API_KEY -e OPENROUTER_API_KEY -e OPENAI_BASE_URL quay.io/gmanka/codex codex --provider openrouter --model deepseek/deepseek-chat-v3-0324:free

```

### toolbox

```sh
toolbox create --image quay.io/gmanka/codex
```

warning: if use toolbox, codex will have full write access to your home directory


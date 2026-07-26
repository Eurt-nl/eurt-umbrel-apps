# Eurt Umbrel App Store

This is a personal [Umbrel Community App Store](https://github.com/getumbrel/umbrel-community-app-store), used to distribute apps for umbrelOS without going through the official [Umbrel App Store](https://github.com/getumbrel/umbrel-apps).

## Adding this store to umbrelOS

In the umbrelOS UI, go to **App Store → ⚙️ (top right) → Community App Stores**, and add:

```
https://github.com/Eurt-nl/eurt-umbrel-apps
```

## Adding a new app

The easiest way to contribute is to send your coding agent to this repository and have it read [`AGENTS.md`](AGENTS.md). That file points to the right repo-local skill in [`.claude/skills/`](.claude/skills) for the work: packaging an existing app, updating a package, testing a package, or developing a self-hosted app that can be packaged.

Manually, the steps are:

1. Create a new folder at the root of this repo. The folder name is the app's ID and **must** start with the store ID `eurt-` (e.g. `eurt-my-app`).
2. Add a `docker-compose.yml` describing the app's Docker services.
3. Add an `umbrel-app.yml` with the app's listing details (name, description, icon, etc).
4. Commit and push. umbrelOS will pick up the change next time it refreshes this app store.

See [`eurt-hello-world`](eurt-hello-world) for a minimal working example.

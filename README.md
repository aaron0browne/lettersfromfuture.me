## Dev

### Install Hugo

Download the distribution that matches your platform from [here](https://github.com/gohugoio/hugo/releases/tag/v0.31.1), decompress the archive, and move the `hugo` binary somewhere in your `$PATH` (`/usr/local/bin/` is usually a good place). It will be available as expected below when you open a new terminal or run `rehash` in your current one.

```
hugo help
```

Shows the built in documentation.

### Serve the site locally

```
hugo server -D
```

The site will include draft posts and automatically reload as you make changes to the source code. You can view it at [http://localhost:1313](http://localhost:1313).

## Ops

### Publish

Make sure `hugo` is installed as described above (you should already have `git`).

```
./build.sh
```

Checks that all source code changes are committed to `git`, deletes the `public` folder and checks out a fresh copy of the `gh-pages` branch into it, removes the existing build in that folder and generates a new one, and then commits that new build to the `gh-pages` branch.

```
./deploy.sh
```

Pushes the commit with the new build to the `gh-pages` branch on the remote and then deploys it to [Firebase Hosting](https://console.firebase.google.com/u/0/project/lettersfromfutureme/hosting/main). It will be visible at [https://lettersfromfuture.me](https://lettersfromfuture.me) shortly.

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

### Add content

```
hugo new article/forgiving-my-dad.md
```

Start a new `article` type post. Look at the [theme documentation](https://github.com/Lednerb/bilberry-hugo-theme#post-types) for a list of the custom post types. Look in `themes/bilberry-hugo-theme/exampleSite/content` for examples.

### Customize colors

1. Install [`yarn`](https://yarnpkg.com/en/docs/install#alternatives-tab)
2. `cd themes/bilberry-hugo-theme/src`
3. Run `yarn install` to install all necessary dependencies.
4. Modify the `scss/_variables.scss` file to customize your colors. If you want to change the header's color just edit the `$base-color` variable.
6. After finishing your changes, run `yarn run production` to produce your customized stylesheets.

## Ops

### Update search index

Serve the site locally and navigate to [http://localhost:1313/index.json](http://localhost:1313/index.json), copy the entire contents of that page, navigate to the [algolia hosted index](https://www.algolia.com/apps/H7SROC0BWQ/explorer/browse/1), clear the index, and then choose to add records manually and paste the copied records into the window.

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
https://analytics.google.com/analytics/web/#embed/report-home/a41382391w165611605p166124897/

### Analytics

[Google Analytics](https://analytics.google.com/analytics/web/#embed/report-home/a41382391w165611605p166124897/) are enabled for the site.

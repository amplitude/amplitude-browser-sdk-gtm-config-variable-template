# Amplitude Browser SDK Configuration Variable Template

Companion Google Tag Manager variable template for the Amplitude Analytics Browser SDK tag template.

This template builds an object for the tag template's `initOptionsMore` field so new Browser SDK init options can live in a separate template repository and separate GTM field budget.

## Repository layout

This repository is structured to match the Google Tag Manager Community Template Gallery project-file requirements:

- `template.tpl`
- `metadata.yaml`
- `LICENSE`
- `README.md`

## Usage

1. Install `Amplitude Browser SDK Configuration Variable` from the Google Tag Manager Community Template Gallery.
2. Create a new variable from that template.
3. Set `Tracking method`.
4. In the Amplitude tag template, set `New configuration options` to `{{Your Variable}}`.

## Merge behavior

The current Amplitude tag template merges this variable into the main init config with a shallow top-level merge.

This example returns:

```js
{
  autocapture: {
    attribution: {
      trackingMethod: 'userProperty' | 'eventProperty' | ['userProperty', 'eventProperty']
    }
  }
}
```

Because the merge is shallow, this replaces the tag template's full `autocapture` object rather than merging into it.

## Publishing

Before submitting this repository to the Community Template Gallery:

1. Commit the files on the default branch.
2. Replace `REPLACE_WITH_PUBLISH_COMMIT_SHA` in [`metadata.yaml`](./metadata.yaml) with the full commit SHA that contains the published [`template.tpl`](./template.tpl).
3. Push the repository to GitHub and submit the repository URL through the GTM Gallery flow.

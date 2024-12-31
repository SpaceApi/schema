# SpaceAPI Schema Files

![Validate schema](https://github.com/SpaceApi/schema/workflows/Validate%20schema/badge.svg?event=push)
![Validate formatting](https://github.com/SpaceApi/schema/workflows/Validate%20formatting/badge.svg?event=push)

These are [JSON Schema](https://json-schema.org/) files for the SpaceAPI.

## Releasing a new version

 * Make sure the `CHANGELOG.md` is up to date
 * Update `MIGRATION.md` with upgrade instructions
 * Rename the current `xx-draft.json` to `xx.json` and create `xx+1-draft.json`
   * Replace the `"$id"` field accordingly
   * Replace the `"description"` field accordingly
   * Replace the `"properties"."api_compatibility"."contains"."const"` accordingly
   * Update the `.github/workflows` accordingly
 * Update the website
   * Regenerate the schema docs
   * Update the example
 * Update the validator
   * Update the schema in https://github.com/spaceapi-community/go-spaceapi-validator and release a new version
   * Update the go-spaceapi-validator version in https://github.com/SpaceApi/validator/

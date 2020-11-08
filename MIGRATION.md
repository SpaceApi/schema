# Migration guide

## Migration from 0.13 to 14

If you're migrating from 0.13 it's fairly easy to do, under the right circumstances you can also serve a file that is compatible with both versions at the same time.

### 0.13 and 14 in the same file
If you never set the `state.open` field to `null` (which is not valid anymore in v14), just add the `api_compatibility` key, and you're good to go!

```json
{
  ...
  "api_compatibility":  [ "14" ],
  ...
}
```
This is of course just the most basic thing, check out the full [changelog](./CHANGELOG.md) for new, renamed or removed fields!

Note that fields that were renamed or removed in v14 can still be present in your endpoint (without any function), since we ignore all unknown fields.

For more information on the new API versioning scheme, check out [pull request #56](https://github.com/SpaceApi/schema/pull/56).


### Compatibility issues

#### state.open

The `open` field can't have a `null` value anymore, but we've also removed the requirement.
If you don't want to show your opening status you had to provide this (which you can now completely remove):
```json
{
  ...
  "state": {
    "open": null
  },
  ...
}
```

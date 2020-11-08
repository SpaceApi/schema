# Migration guide

## Migration from 0.13 to 14

If you're migrating from 0.13 it's fairly easy to do, under the right circumstances you can also serve a file that is compatible with both versions at the same time.

### 0.13 and 14 in the same file
If you're not provide a `null` value to the `status.open` field just add the following, and you're good to go! 

```json
{
  ...
  "api_compatibility":  [ "14" ],
  ...
}
```
This is of course just the most basic thing, check out the [changelog](./CHANGELOG.md) for new or renamed fields too!


### Compatibility issues

#### status.open

The `open` field can't have a `null` value anymore, but we've also removed the requirement.
If you don't want to show your opening status you had to provide this (which you can now completely remove):
```json
{
  ...
  "status": {
    "open": null
  },
  ...
}
```

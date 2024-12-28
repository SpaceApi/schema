# Migration guide

## Migration from 14 to 15

Most SpaceAPI implementation that implement v14 should already be compatible
with v15 and can just announce compatibility for it as well:

```json
{
  ...
  "api_compatibility":  [ "14", "15" ],
  ...
}
```

The exception are spaces that use things that were deprecated in v14 like the
`hPA` instead of `hPa` unit for the barometer sensor. See
https://github.com/SpaceApi/schema/blob/master/CHANGELOG.md#v15 for details.

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

The `open` field can't have a `null` value anymore, but on the other hand the `state` and the `state.open` keys are not required anymore.

If previously your endpoint contained this:

```json
{
  ...
  "state": {
    "open": null
  },
  ...
}
```

...you can simply remove the `state.open` key or the entire `state` key to be compatible with v14.

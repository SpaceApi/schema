# Migration guide

## Migration from 0.13 to 0.14

If you're migrating from 0.13 it's fairly easy to do, under the right circumstances you can also serve a file that is compatible with both versions at the same time.

### 0.13 and 0.14 in the same file
If you're not using the barometer sensor or provide a `null` value to the `status.open` field just add the following, and you're good to go! 

```json
{
  ...
  "api_compatibility":  [ "0.14" ],
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

#### barometer
If you're using the barometer sensor you also can't serve 0.13 anymore. 
You have to switch the value in the unit field to `hPa`.

So this:
```json
{
  ...
  "sensors":  {
    "barometer": [
      {
        "value": 1020,
        "unit": "hPA",
        "location": "outside"
      }
    ]
  },
  ...
}
```

Becomes this:
```json
{
  ...
  "sensors":  {
    "barometer": [
      {
        "value": 1020,
        "unit": "hPa",
        "location": "outside"
      }
    ]
  },
  ...
}
```

# Changelog

This document records changes between API versions.

Changes should start with one of the following tags:

- `[added]` for new, backward compatible features
- `[changed]` for changes to the existing API
- `[removed]` for keys that have been removed from the schema

## v14

Root level:

- [added] The `api_compatibility` field was added
- [added] The `links` section was added
- [added] The `membership_plans` key was added to represent membership plans a space might have
- [removed] The `api` key was removed (replaced with `api_compatibility`, see [#56] for details)
- [removed] The `cache` key was removed
- [removed] The `stream` key was removed
- [removed] The `issue_report_channels` key was removed
- [removed] The `radio_show` key was removed

`contact`:

- [changed] The `jabber` key was renamed to `xmpp`
- [added] The `keymasters` array items can also contain a `xmpp` field
- [added] The `mumble` contact option was added
- [added] The `mastodon` key was added to `contact` and `contact.keymasters`
- [removed] The `google` key was removed

`location`:

- [added] The `timezone` key was added
- [changed] The description of `location.lon` was fixed

`sensors`:

- [added] The `network_traffic` sensor was added
- [changed] The value in `account_balance` can now be any ISO 4217 string
- [changed] The unit `hPA` in `barometer.unit` was deprecated, use `hPa` instead to match the SI unit

`spacefed`:

- [removed] The `spacephone` key was removed

`state`:

- [changed] The keys `state` and `state.open` are not required anymore and `state.open` is no longer nullable


[#56]: https://github.com/SpaceApi/schema/pull/56

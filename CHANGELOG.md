# Changelog

This document records changes between API versions.

Changes should start with one of the following tags:

- `[added]` for new, backward compatible features
- `[changed]` for changes to the existing API
- `[removed]` for keys that have been removed from the schema

## v0.14 (unreleased)

- [added] The `api_compatibility` field was added
- [added] The `membership_plans` key was added to represent membership plans a space might have
- [added] The `timezone` key was added under `location`
- [added] The `mastodon` key was added under `contact` and to `contact.keymasters` array items
- [added] The `contact.keymasters` array items can also contain a `xmpp` field
- [added] The `network_traffic` sensor was added

- [changed] The value in `sensors.account_balance` can now be any ISO 4217 string
- [added] The `timezone` key was added under `location`
- [added] The `membership_plans` key was added to represent membership plans a space might have
- [changed] The unit `hPA` in `sensors.barometer.unit` was deprecated, use `hPa` instead to match the SI unit
- [added] The `mastodon` key was added under `contact` and to `contact.keymasters` array items
- [changed] The unit `hPA` in `sensors.barometer.unit` was renamed to `hPa` to match the SI unit
- [changed] The `jabber` key under `contact` was renamed to `xmpp`
- [changed] The description of `location.lon` was changed to state the correct direction.
- [changed] The keys `state` and `state.open` are not required anymore and `state.open` is no longer nullable.

- [removed] The `api` key was removed
- [removed] The `issue_report_channel` key was removed
- [removed] The `cache` key was removed
- [removed] The `radio_show` key was removed
- [removed] The `api` key was removed
- [removed] The `stream` key was removed
- [added] The `api_compatibility` field was added
- [added] The `network_traffic` sensor was added
- [added] The `links` section was added
- [removed] The `google` key was removed from `contact`

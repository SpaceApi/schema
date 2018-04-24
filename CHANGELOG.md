# Changelog

This document records changes between API versions.

Changes should start with one of the following tags:

- `[added]` for new, backward compatible features
- `[changed]` for changes to the existing API

## v0.14 (unreleased)

- [changed] The `jabber` key under `contact` was renamed to `xmpp`
- [added] The `contact.keymasters` array items can also contain a `xmpp` field
- [changed] The value in `sensors.account_balance` can now be any ISO 4217 string
- [added] The `timezone` key was added under `location`
- [added] The `membership_plans` key was added to represent membership plans a space might have
- [changed] The unit `hPA` in `sensors.barometer.unit` was renamed to `hPa` to match the SI unit
- [added] The `mastodon` key was added under `contact` and to `contact.keymasters` array items
- [changed] The description of `location.lon` was changed to state the correct direction.

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

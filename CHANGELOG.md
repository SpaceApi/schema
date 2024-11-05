# Changelog

This document records changes between API versions.

Changes should start with one of the following tags:

- `[added]` for new, backward compatible features
- `[changed]` for changes to the existing API
- `[removed]` for keys that have been removed from the schema

## v15 (unreleased)

Root level:

- [added] The `linked_spaces` field was added ([#75], [#92])

`events`:

- [changed] Clarify that `timestamp` unit is in seconds ([#98])

`location`:

- [added] The `country_code` field was added ([#108])
- [added] The `areas` field was added ([#107])
- [added] The `hint` field was added ([#102])
- [changed] Make entire `location` field optional to enable the inclusion of groups without physical location ([#106])

`sensors`:

- [added] The `power_generation` sensor was added ([#105])
- [added] The `lastchange` field was added to all sensors ([#97])
- [removed] The deprecated unit `hPA` in `barometer.unit` was removed, use `hPa` instead ([#109])
- [removed] The redundant unit `mW` in `power_consumption.unit` was removed, use `W` instead ([#109])

`state`:

- [changed] Clarify that `lastchange` unit is in seconds ([#98])

`membership_plans`:

- [added] The `quarterly` enum value was added to `billing_interval`

## v14

Root level:

- [added] The `api_compatibility` field was added
- [added] The `links` section was added ([#67])
- [added] The `membership_plans` key was added to represent membership plans a space might have ([#15], [#27])
- [removed] The `api` key was removed (replaced with `api_compatibility`, see [#56] for details)
- [removed] The `cache` key was removed ([#46])
- [removed] The `stream` key was removed ([#70])
- [removed] The `issue_report_channels` key was removed ([#47])
- [removed] The `radio_show` key was removed ([#48])

`contact`:

- [changed] The `jabber` key was renamed to `xmpp`[#8]
- [added] The `keymasters` array items can also contain a `xmpp` field ([#8])
- [added] The `mumble` contact option was added ([#77])
- [added] The `matrix` contact option was added ([#44])
- [added] The `mastodon` key was added to `contact` and `contact.keymasters` ([#26])
- [added] The `gopher` contact option was added ([#24], [#31])
- [removed] The `google` key was removed ([#37])

`location`:

- [added] The `timezone` key was added ([#13])
- [changed] The description of `location.lon` was fixed ([#28])

`sensors`:

- [added] The `network_traffic` sensor was added ([#60])
- [changed] The unit in `account_balance` can now be any ISO 4217 string ([#12])
- [changed] The unit `hPA` in `barometer.unit` was deprecated, use `hPa` instead to match the SI unit ([#7], [#72])

`spacefed`:

- [removed] The `spacephone` key was removed ([#80])

`state`:

- [changed] The keys `state` and `state.open` are not required anymore and `state.open` is no longer nullable


[#7]: https://github.com/SpaceApi/schema/pull/7
[#8]: https://github.com/SpaceApi/schema/pull/8
[#12]: https://github.com/SpaceApi/schema/pull/12
[#13]: https://github.com/SpaceApi/schema/pull/13
[#15]: https://github.com/SpaceApi/schema/pull/15
[#24]: https://github.com/SpaceApi/schema/pull/24
[#26]: https://github.com/SpaceApi/schema/pull/26
[#27]: https://github.com/SpaceApi/schema/pull/27
[#28]: https://github.com/SpaceApi/schema/pull/28
[#31]: https://github.com/SpaceApi/schema/pull/31
[#37]: https://github.com/SpaceApi/schema/pull/37
[#44]: https://github.com/SpaceApi/schema/pull/44
[#46]: https://github.com/SpaceApi/schema/pull/46
[#47]: https://github.com/SpaceApi/schema/pull/47
[#48]: https://github.com/SpaceApi/schema/pull/48
[#56]: https://github.com/SpaceApi/schema/pull/56
[#60]: https://github.com/SpaceApi/schema/pull/60
[#67]: https://github.com/SpaceApi/schema/pull/67
[#70]: https://github.com/SpaceApi/schema/pull/70
[#72]: https://github.com/SpaceApi/schema/pull/72
[#75]: https://github.com/SpaceApi/schema/pull/75
[#77]: https://github.com/SpaceApi/schema/pull/77
[#80]: https://github.com/SpaceApi/schema/pull/80
[#109]: https://github.com/SpaceApi/schema/pull/109
[#92]: https://github.com/SpaceApi/schema/pull/92
[#97]: https://github.com/SpaceApi/schema/pull/97
[#98]: https://github.com/SpaceApi/schema/pull/98
[#102]: https://github.com/SpaceApi/schema/pull/102
[#105]: https://github.com/SpaceApi/schema/pull/105
[#106]: https://github.com/SpaceApi/schema/pull/106
[#108]: https://github.com/SpaceApi/schema/pull/108
[#107]: https://github.com/SpaceApi/schema/pull/107

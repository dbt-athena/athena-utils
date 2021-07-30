# athena-utils

This [dbt](https://github.com/fishtown-analytics/dbt) package contains macros
that:

- can be (re)used across dbt projects running on Athena
- define Athena-specific implementations of [dispatched macros](https://docs.getdbt.com/reference/dbt-jinja-functions/adapter/#dispatch) from other packages

## Installation Instructions

Check [dbt Hub](https://hub.getdbt.com) for the latest installation
instructions, or [read the docs](https://docs.getdbt.com/docs/package-management)
for more information on installing packages.

---

## Compatibility

This package provides "shims" for [`dbt_utils`](https://github.com/fishtown-analytics/dbt-utils).
In the future more shims could be added to this repository.

### Contributing

We welcome contributions to this repo! To contribute a new feature or a fix,
please open a Pull Request with 1) your changes and 2) updated documentation for
the `README.md` file.

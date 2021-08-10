# athena-utils

This [dbt](https://github.com/fishtown-analytics/dbt) package contains macros
that:

- can be (re)used across dbt projects running on Athena
- define Athena-specific implementations of [dispatched macros](https://docs.getdbt.com/reference/dbt-jinja-functions/adapter/#dispatch) from other packages

## Installation Instructions

Add to your packages.yml

```yaml
packages:
  - git: https://github.com/lalalilo/athena-utils
    revision: 0.1.0
```

For dbt < v0.19.2, add the following lines to your `dbt_project.yml`:

```yaml
vars:
  dbt_utils_dispatch_list: ["athena_utils"]
```

For dbt >= v0.19.2, , add the following lines to your `dbt_project.yml`:

```yaml
dispatch:
  - macro_namespace: dbt_utils
    search_order: [athena_utils, dbt_utils]
```

## Compatibility

This package provides "shims" for [`dbt_utils`](https://github.com/fishtown-analytics/dbt-utils) thanks to [@dbarok](https://github.com/dbarok) ([initial implementation](https://github.com/dbt-labs/dbt-utils/pull/380)).
In the future more shims could be added to this repository.

### Contributing

We welcome contributions to this repo! To contribute a new feature or a fix,
please open a Pull Request with 1) your changes and 2) updated documentation for
the `README.md` file.

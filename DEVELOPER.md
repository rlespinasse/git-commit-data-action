# Developer guide

## Add a missing data

1. Compose your missing data based of [git log pretty formats][1],
2. Choose a environment variable name linked to this missing data using the prefix `GIT_COMMIT_`,
3. Update the `entrypoint.sh` to generate the environment variable content,
   * Adding template format using naming convention `TEMPLATE_COMMIT_` prefix and `_FORMAT` suffix,
   * Use `git_log_format` method to generate the content of your new environment variable.
4. Update the `tests/git_log_format.bats` to validate your new environment variable generation,
5. Run `npm test` to validate your new tests,
6. Update the `README.md` file to document your new environment variable,
7. Create a new Pull-request to be reviewed.

[1]: https://git-scm.com/docs/pretty-formats

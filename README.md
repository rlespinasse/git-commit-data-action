# Git Commit Data action

[![Actions Status][1]][2]
[![Public workflows that use this action.][3]][4]
[![Licence][5]][6]

This action expose git commit data.

- **GIT_COMMIT_AUTHOR** expose `Author Name <author@email.tld>`
- **GIT_COMMIT_AUTHOR_NAME** expose `Author Name`
- **GIT_COMMIT_AUTHOR_EMAIL** expose `author@email.tld`
- **GIT_COMMIT_COMMITTER** expose `Committer Name <committer@email.tld>`
- **GIT_COMMIT_COMMITTER_NAME** expose `Committer Name`
- **GIT_COMMIT_COMMITTER_EMAIL** expose `committer@email.tld`

## Exposed environment variables

```yaml
- name: Expose git commit data
  uses: rlespinasse/git-commit-data-action@v1.x

- name: Print git commit data
  run: |
    echo "Get author info"
    echo " - ${{ env.GIT_COMMIT_AUTHOR }}"
    echo " - ${{ env.GIT_COMMIT_AUTHOR_NAME }}"
    echo " - ${{ env.GIT_COMMIT_AUTHOR_EMAIL }}"
    echo "Get committer info"
    echo " - ${{ env.GIT_COMMIT_COMMITTER }}"
    echo " - ${{ env.GIT_COMMIT_COMMITTER_NAME }}"
    echo " - ${{ env.GIT_COMMIT_COMMITTER_EMAIL }}"
```

[1]: https://github.com/rlespinasse/git-commit-data-action/workflows/Build/badge.svg
[2]: https://github.com/rlespinasse/git-commit-data-action/actions
[3]: https://img.shields.io/endpoint?url=https%3A%2F%2Fapi-git-master.endbug.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Drlespinasse%2Fgit-commit-data-action%26badge%3Dtrue
[4]: https://github.com/search?o=desc&q=rlespinasse/git-commit-data-action+path%3A.github%2Fworkflows+language%3AYAML&s=&type=Code
[5]: https://img.shields.io/github/license/rlespinasse/git-commit-data-action
[6]: https://github.com/rlespinasse/git-commit-data-action/blob/v1.x/LICENSE

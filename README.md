# Git Commit Data action

[![Actions Status](https://github.com/rlespinasse/git-commit-data-action/workflows/Build/badge.svg)](https://github.com/rlespinasse/git-commit-data-action/actions)

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

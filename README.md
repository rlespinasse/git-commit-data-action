# Git Commit Info action

[![Actions Status](https://github.com/rlespinasse/git-commit-info-action/workflows/Build/badge.svg)](https://github.com/rlespinasse/git-commit-info-action/actions)

This action expose git commit info.

- **GIT_COMMIT_AUTHOR** expose `Author Name <author@email.tld>`
- **GIT_COMMIT_AUTHOR_NAME** expose `Author Name`
- **GIT_COMMIT_AUTHOR_EMAIL** expose `author@email.tld`
- **GIT_COMMIT_COMMITTER** expose `Committer Name <committer@email.tld>`
- **GIT_COMMIT_COMMITTER_NAME** expose `Committer Name`
- **GIT_COMMIT_COMMITTER_EMAIL** expose `committer@email.tld`

## Exposed environment variables

```yaml
- name: Expose git commit info
  uses: rlespinasse/git-commit-info-action@v1.x

- name: Print git commit info
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

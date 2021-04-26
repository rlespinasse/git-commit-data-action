# Git commit data action

[![Actions Status][1]][2]
[![Public workflows that use this action.][3]][4]
[![Licence][5]][6]

This action exposes git commit data.

- **GIT_COMMIT_AUTHOR** expose `Author name <author@email.tld>`
- **GIT_COMMIT_AUTHOR_NAME** expose `Author name`
- **GIT_COMMIT_AUTHOR_EMAIL** expose `author@email.tld`
- **GIT_COMMIT_COMMITTER** expose `Committer name <committer@email.tld>`
- **GIT_COMMIT_COMMITTER_NAME** expose `Committer name`
- **GIT_COMMIT_COMMITTER_EMAIL** expose `committer@email.tld`
- **GIT_COMMIT_MESSAGE_SUBJECT** expose `The first line of the commit message`
- **GIT_COMMIT_MESSAGE_SUBJECT_SANITIZED** expose `the-first-line-of-the-commit-message-in-sanitized-way`
- **GIT_COMMIT_MESSAGE_BODY** expose `The body of the commit message`

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
    echo "Get message info"
    echo " - ${{ env.GIT_COMMIT_MESSAGE_SUBJECT }}"
    echo " - ${{ env.GIT_COMMIT_MESSAGE_SUBJECT_SANITIZED }}"
    echo " - ${{ env.GIT_COMMIT_MESSAGE_BODY }}"
```

## Need other commit data

Feel free to contribute. Check out the [developer guide][7]

[1]: https://github.com/rlespinasse/git-commit-data-action/workflows/Build/badge.svg
[2]: https://github.com/rlespinasse/git-commit-data-action/actions
[3]: https://img.shields.io/endpoint?url=https%3A%2F%2Fapi-git-master.endbug.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Drlespinasse%2Fgit-commit-data-action%26badge%3Dtrue
[4]: https://github.com/search?o=desc&q=rlespinasse/git-commit-data-action+path%3A.github%2Fworkflows+language%3AYAML&s=&type=Code
[5]: https://img.shields.io/github/license/rlespinasse/git-commit-data-action
[6]: https://github.com/rlespinasse/git-commit-data-action/blob/v1.x/LICENSE
[7]: DEVELOPERS.md

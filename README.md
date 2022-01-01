# Git commit data action

This action exposes git commit data.

- **GIT_COMMIT_SHA** expose `commit hash`
- **GIT_COMMIT_SHORT_SHA** expose `abbreviated commit hash`
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
  uses: rlespinasse/git-commit-data-action@v1

- name: Print git commit data
  run: |
    echo "Get commit info"
    echo " - ${{ env.GIT_COMMIT_SHA }}"
    echo " - ${{ env.GIT_COMMIT_SHORT_SHA }}"
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

Feel free to contribute. Check out the [developer guide](DEVELOPERS.md)

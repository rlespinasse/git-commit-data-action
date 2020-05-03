#!/bin/sh -l

AUTHOR_FORMAT="%an <%ae>"
AUTHOR_NAME_FORMAT="%an"
AUTHOR_EMAIL_FORMAT="%ae"

COMMITTER_FORMAT="%cn <%ce>"
COMMITTER_NAME_FORMAT="%cn"
COMMITTER_EMAIL_FORMAT="%ce"

git_log_format() {
  pattern="$1"
  reference="$2"
  git log -1 --pretty=format:"$pattern" "$reference"
}

echo ::set-env name=GIT_COMMIT_AUTHOR::"$(git_log_format "$AUTHOR_FORMAT" "HEAD")"
echo ::set-env name=GIT_COMMIT_AUTHOR_NAME::"$(git_log_format "$AUTHOR_NAME_FORMAT" "HEAD")"
echo ::set-env name=GIT_COMMIT_AUTHOR_EMAIL::"$(git_log_format "$AUTHOR_EMAIL_FORMAT" "HEAD")"

echo ::set-env name=GIT_COMMIT_COMMITTER::"$(git_log_format "$COMMITTER_FORMAT" "HEAD")"
echo ::set-env name=GIT_COMMIT_COMMITTER_NAME::"$(git_log_format "$COMMITTER_NAME_FORMAT" "HEAD")"
echo ::set-env name=GIT_COMMIT_COMMITTER_EMAIL::"$(git_log_format "$COMMITTER_EMAIL_FORMAT" "HEAD")"

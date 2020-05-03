#!/usr/bin/env bats

apk add --no-cache git > /dev/null

TEST_COMMIT_SHA=9f2cc79

# Load git_log_format function
source entrypoint.sh > /dev/null 2>&1

@test "git_log_format: author" {
  test_git_log_format "$AUTHOR_FORMAT" "rlespinasse <romain.lespinasse@gmail.com>"
}

@test "git_log_format: author name" {
  test_git_log_format "$AUTHOR_NAME_FORMAT" "rlespinasse"
}

@test "git_log_format: author email" {
  test_git_log_format "$AUTHOR_EMAIL_FORMAT" "romain.lespinasse@gmail.com"
}

@test "git_log_format: committer" {
  test_git_log_format "$COMMITTER_FORMAT" "rlespinasse <romain.lespinasse@gmail.com>"
}

@test "git_log_format: committer name" {
  test_git_log_format "$COMMITTER_NAME_FORMAT" "rlespinasse"
}

@test "git_log_format: committer email" {
  test_git_log_format "$COMMITTER_EMAIL_FORMAT" "romain.lespinasse@gmail.com"
}

test_git_log_format() {
  given="${1}"
  expected="${2}"

  actual="$(git_log_format "${given}" "$TEST_COMMIT_SHA")"
  echo "expected : [${expected}], actual : [${actual}]"
  [ "${actual}" == "${expected}" ]
}

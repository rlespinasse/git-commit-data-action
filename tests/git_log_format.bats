#!/usr/bin/env bats

apk add --no-cache git > /dev/null

TEST_COMMIT_SHA=9f2cc79

# Load git_log_format function
source entrypoint.sh > /dev/null 2>&1

@test "git_log_format: author" {
  test_git_log_format "$TEMPLATE_AUTHOR_FORMAT" "rlespinasse <romain.lespinasse@gmail.com>"
}

@test "git_log_format: author name" {
  test_git_log_format "$TEMPLATE_AUTHOR_NAME_FORMAT" "rlespinasse"
}

@test "git_log_format: author email" {
  test_git_log_format "$TEMPLATE_AUTHOR_EMAIL_FORMAT" "romain.lespinasse@gmail.com"
}

@test "git_log_format: committer" {
  test_git_log_format "$TEMPLATE_COMMITTER_FORMAT" "rlespinasse <romain.lespinasse@gmail.com>"
}

@test "git_log_format: committer name" {
  test_git_log_format "$TEMPLATE_COMMITTER_NAME_FORMAT" "rlespinasse"
}

@test "git_log_format: committer email" {
  test_git_log_format "$TEMPLATE_COMMITTER_EMAIL_FORMAT" "romain.lespinasse@gmail.com"
}

@test "git_log_format: message subject" {
  test_git_log_format "$TEMPLATE_COMMIT_MESSAGE_SUBJECT_FORMAT" "build: prepare github action"
}

@test "git_log_format: message subject sanitized" {
  test_git_log_format "$TEMPLATE_COMMIT_MESSAGE_SUBJECT_SANITIZED_FORMAT" "build-prepare-github-action"
}

@test "git_log_format: message body" {
  test_git_log_format "$TEMPLATE_COMMIT_MESSAGE_BODY_FORMAT" ""
}

test_git_log_format() {
  given="${1}"
  expected="${2}"

  actual="$(git_log_format "${given}" "$TEST_COMMIT_SHA")"
  echo "expected : [${expected}], actual : [${actual}]"
  [ "${actual}" == "${expected}" ]
}

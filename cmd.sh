#!/usr/bin/env sh

set -e

if [ "$teamId" -ne 0 ]; then
teamIdJson=$(printf ",\"team_id\": %s" $teamId)
fi

cat > body <<EOF
{
  "name": "$name",
  "description": "$description",
  "gitignore_template": "$gitignoreTemplate",
  "homepage": "$homepage",
  "auto_init": $isAutoInitEnabled,
  "has_issues": $isIssuesEnabled,
  "allow_merge_commit": $isMergeMergingAllowed,
  "private": $isPrivate,
  "has_projects": $isProjectsEnabled,
  "allow_rebase_merge": $isRebaseMergingAllowed,
  "allow_squash_merge": $isSquashMergingAllowed,
  "has_wiki": $isWikiEnabled,
  "license_template": "$licenseTemplate"
  $teamIdJson
}
EOF

if [ "$org" != " " ]; then
url="https://api.github.com/orgs/${org}/repos"
else
url="https://api.github.com/user/repos"
fi

statusCode=$(curl \
    --silent \
    --output \
    /dev/stderr \
    --write-out "%{http_code}" \
    --user "${loginUsername}:${loginPassword}" \
    -X POST "$url" \
    -d @body)

if test "$statusCode" -ne 201; then
exit 1
fi
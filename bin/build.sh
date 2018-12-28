ORIGINAL_TEXt="enableHooks = false"
NEW_TEXT="enableHooks = true"
grep -rl "${ORIGINAL_TEXt}" packages/shared | xargs sed -i "s/${ORIGINAL_TEXt}/${NEW_TEXT}/g"

yarn install
yarn build -- --type=RN_OSS

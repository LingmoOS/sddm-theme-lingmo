#!/usr/bin/env bash
# 重新生成并编译主题翻译（需要 qt6 的 lupdate6 / lrelease6）
# 新增可翻译文案后执行：./update_translations.sh
set -e
cd "$(dirname "$0")"
FILES=$(ls Main.qml components/*.qml)
lupdate6 $FILES -ts translations/*.ts -no-obsolete
lrelease6 translations/*.ts
echo "done. 记得把 translations/ 一起拷到 /usr/share/sddm/themes/lingmo/"

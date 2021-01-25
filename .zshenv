up() {
  local filePath="$(readlink -f $1)"
  local targetPackage=~/repos/dunelm-web/packages/tests/integration/package.json
  local formattedPath="$(sed "s/\/home\(.*\)integration/\./" <<< $filePath)"
  echo $formattedPath
  local sedCommand="21 s/\.\(.*\)\"/${formattedPath//\//\\/}\" --ports 36560,65535/"
  echo $sedCommand
  git checkout master $targetPackage
  echo "Updating - $targetPackage with $formattedPath"
  sed -i --debug $sedCommand $targetPackage
}

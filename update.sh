for x in $(ls -d */); do
  pushd $x;
  git stash;
  git pull --rebase;
  git stash pop;
  popd;
done

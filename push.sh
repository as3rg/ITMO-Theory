cd -- "$( dirname -- "${BASH_SOURCE[0]}" )"
./build.sh
git add .
git commit -m "$(date)"
git push origin main
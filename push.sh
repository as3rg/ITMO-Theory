cd -- "$( dirname -- "${BASH_SOURCE[0]}" )"
git add .
git commit -m "$(date)"
git push origin main
cd -- "$( dirname -- "${BASH_SOURCE[0]}" )"
RED='\033[0;31m'          # Red
GREEN='\033[0;32m'        # Green
NC='\033[0m' # No Color
find ~+ -name "*.tex" | while read line
do
  cd "$(dirname "$line")"
  pdflatex -interaction=nonstopmode "$line" 1> /dev/null
  if [[ "$?" == "0" ]]; then
    printf "$GREEN$line\n"
  else
    printf "$RED$line\n"
  fi
done
./clean.sh
printf "$NC"
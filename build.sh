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
  # latexmk -pdf "$line" 1> /dev/null
done
find ~+ -name '*.aux' -o -name '*.fdb_latexmk' -o -name '*.log' -o -name '*.fls' -o -name '*.out' | tr "\n" "\0" | xargs -0 rm
printf "$NC"
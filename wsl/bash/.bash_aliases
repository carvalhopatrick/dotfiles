function cdl(){
	cd $1 && ll
}

function cdwin(){
	A=$(echo $1 | perl -pe 's/\\/\//g')
	# 'X:/some/windows/path'

	B=$(echo $A | perl -pe 's/(.)(:)/\L\/mnt\/\1/')
	# '/mnt/x/some/windows/path'

	cd "$B"
}

alias a_downloads="cd /mnt/c/Users/ptrckpc/Downloads"
alias a_desktop="cd '/mnt/c/Users/ptrckpc/OneDrive - Instituto de Pesquisas Eldorado/Desktop'"
alias a_notes="cd '/mnt/c/Users/ptrckpc/OneDrive - Instituto de Pesquisas Eldorado/Desktop/notes'"
alias a_crs='cd /mnt/c/CRs'


alias n++="/mnt/c/Program\ Files/Notepad++/Notepad++.exe"

# (?!.) == negative lookahead, para certificar que não vai pegar um .txt.gz
function convert-aplogs(){
	cat $(find . | grep -P 'c\.txt(?!.)') > crash.txt
	cat $(find . | grep -P 'e\.txt(?!.)') > events.txt
	cat $(find . | grep -P 'r\.txt(?!.)') > radio.txt
	cat $(find . | grep -P 's\.txt(?!.)') > system.txt
	cat $(find . | grep -P 'k\.txt(?!.)') > kernel.txt
	cat $(find . | grep -P 'm\.txt(?!.)') > main.txt
}

function pget() {
  if [[ $# -ne 1 ]]; then
    echo "Usage: pget http://full/artifactory/path/to/file.tar.gz"  
  else
    lftp -u ptrckpc ${1%*/*} -e "pget -n 8 -c ${1##*/}; exit"
  fi
}

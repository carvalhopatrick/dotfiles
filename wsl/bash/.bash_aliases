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
alias a_dcrs='cd /mnt/d/dCRs'

alias n++="/mnt/c/Program\ Files/Notepad++/Notepad++.exe"

function convert-aplogs(){
	cat $(find . | grep c.txt) > crash.txt
	cat $(find . | grep e.txt) > events.txt
	cat $(find . | grep r.txt) > radio.txt
	cat $(find . | grep s.txt) > system.txt
	cat $(find . | grep k.txt) > kernel.txt
	cat $(find . | grep m.txt) > main.txt
}

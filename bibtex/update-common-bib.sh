#!/bin/sh
#
# update-common-bib.sh
#
# A script to maintain a common.bib reading all *.aux files generated in
# this workspace (../../../build/doc/*.cachedoc/*.aux).
#
# This scripts adds new entries from the origin .bib files (which are not
# necessarily distributed)
#

if ! command -v bibtool > /dev/null 2>&1; then
    cat <<EOF
Cannot find 'bibtool' in the path.

Install with:

  $ brew install bib-tool # macOS, homebrew

  $ apt-get install bibtool # Ubuntu

EOF
    exit 1
fi

bib_origin_path="../../../../bibtex"
bib_origin="svn+ssh://cliplab.org/home/clip/SvnReps/bibtex"

check_bib_origin() {
    if [ -x "$bib_origin_path" ]; then
	return 0
    fi
    cat <<EOF
Could not find a local copy of:
  $bib_origin
under 
  $bib_origin_path

Please clone the repository under that path or create a symbolic path
to your copy.

EOF
    exit 1
}

# Merge bib file $1 into $2
merge_bib() {
    # Merge common-tmp.bib into common.bib
    bibtool -r merge-bib.rsc -s -i "$2" "$1" -o "$2"
    bibtool -r merge-bib.rsc -d -i "$2" -o "$2"
    bibtool -r merge-bib.rsc -s -i "$2" -o "$2"
}

update_from_aux() {
    bibtool -x "$1" -i "$bib_origin_path"/clip/*.bib -o common-tmp.bib 2> /dev/null
    merge_bib common-tmp.bib common.bib 2> /dev/null
    rm -f common-tmp.bib
}

check_bib_origin
printf "Using the following .bib files as origin\n"
for i in "$bib_origin_path"/clip/*.bib; do 
    printf "  %s\n" $i
done
for i in ../../../build/doc/*.cachedoc/*.aux; do
    printf "Updating for entries from %s\n" "$i"
    update_from_aux "$i"
done



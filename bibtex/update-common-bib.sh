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

if ! which bibtool 2>&1 > /dev/null; then
    cat <<EOF
Cannot find 'bibtool' in the path.

Install with:

  $ brew install bib-tool # macOS, homebrew

  $ apt-get install bibtool # Ubuntu

EOF
    exit 1
fi

# Merge bib file $1 into $2
merge_bib() {
    # Merge common-tmp.bib into common.bib
    bibtool -r merge-bib.rsc -s -i "$2" "$1" -o "$2"
    bibtool -r merge-bib.rsc -d -i "$2" -o "$2"
    bibtool -r merge-bib.rsc -s -i "$2" -o "$2"
}

update_from_aux() {
    bibtool -x "$1" -i clip.bib general.bib -o common-tmp.bib 2> /dev/null
    merge_bib common-tmp.bib common.bib 2> /dev/null
    rm -f common-tmp.bib
}

for i in ../../../build/doc/*.cachedoc/*.aux; do
    printf "Updating for entries from %s\n" "$i"
    update_from_aux "$i"
done



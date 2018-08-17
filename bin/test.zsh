#!/usr/bin/env zsh

local times=${1:-100}
local php_version=""
php -v
echo
echo "Testing ${times} times..."
echo
echo "  Testing:   php_version=\$(php -v 2>&1 | grep -oe \"^PHP\s*[0-9.]*\")"
time ( repeat ${times} { php_version=$(php -v 2>&1 | grep -oe "^PHP\s*[0-9.]*") } )
php_version=$(php -v 2>&1 | grep -oe "^PHP\s*[0-9.]*")
echo "  php_version='${php_version}'"
php_version=""
echo
echo "  Testing:   php_version=\"\${\${\${(SM)\${\"\$( php -v 2>&1 )\"}#PHP * }#PHP }: :-1}\""
time ( repeat ${times} { php_version="${${${(SM)${"$( php -v 2>&1 )"}#PHP * }#PHP }: :-1}" } )
php_version="${${${(SM)${"$( php -v 2>&1 )"}#PHP * }#PHP }: :-1}"
echo "  php_version='${php_version}'"
echo

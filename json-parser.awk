#!/bin/awk -f

BEGIN { FS = ","; RS = "},{" }

/^"/ {
	{ gsub(/"[A-Za-z0-9]+":/,"",$0) }
	{ printf ( "var n = %s\nvar time = %s\nvar message = %s\nvar user = %s\nvar type = %s\nvar modtime = %s\n\n", $1, $3, $2, $6, $5 ,$4 ) }
}

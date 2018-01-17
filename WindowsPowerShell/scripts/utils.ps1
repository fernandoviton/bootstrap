function find {
	param ([switch] $exact)

	if ($exact) {
		ls -inc $args -rec
	}
	else {
		ls -inc "*$args*" -rec
	}
}

function To-Binary {
	param (
		[Parameter(ValueFromPipeline=$true)]
		[int]$num
	)
	[Convert]::ToString($num, 2)
}

function To-Hex {
	param (
		[Parameter(ValueFromPipeline=$true)]
		[int]$num
	)
	[Convert]::ToString($num, 16)
}
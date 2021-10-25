package utils

import "strings"

func TrimLowerString(str string) string {
	str = strings.ToLower(str)
	str = strings.Trim(str, " ")

	return str
}

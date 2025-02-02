package main

import (
	"log"

	"github.com/rebelopsio/thrivemind/internal/cmd"
)

func main() {
	if err := cmd.Execute(); err != nil {
		log.Fatal(err)
	}
}

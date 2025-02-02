package cmd

import (
	"github.com/rebelopsio/thrivemind/internal/cmd/migrate"
	"github.com/rebelopsio/thrivemind/internal/cmd/serve"
	"github.com/spf13/cobra"
)

var rootCmd = &cobra.Command{
	Use:   "thrivemind",
	Short: "ThriveMind - Flexible nutrition tracking and coaching platform",
	Long: `ThriveMind is a comprehensive platform for nutrition tracking and coaching.
It supports various tracking methods including calories, macros, and more.`,
}

func Execute() error {
	return rootCmd.Execute()
}

func init() {
	rootCmd.AddCommand(
		serve.NewServeCmd(),
		migrate.NewMigrateCmd(),
		newVersionCmd(),
	)
}

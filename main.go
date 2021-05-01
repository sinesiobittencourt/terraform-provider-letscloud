package main

import (
	"github.com/hashicorp/terraform-plugin-sdk/plugin"
	"github.com/sinesiobittencourt/terraform-provider-letscloud"
)

func main() {
	plugin.Serve(&plugin.ServeOpts{
		ProviderFunc: letscloud.Provider})
}

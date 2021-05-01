<a href="https://terraform.io">
    <img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" alt="Terraform logo" title="Terraform" align="right" height="50" />
</a>

# Terraform Provider for AWS

[![Forums][discuss-badge]][discuss] [![pre-commit.ci status](https://results.pre-commit.ci/badge/github/sinesiobittencourt/terraform-provider-letscloud/main.svg)](https://results.pre-commit.ci/latest/github/sinesiobittencourt/terraform-provider-letscloud/main)


[discuss-badge]: https://img.shields.io/badge/discuss-terraform--aws-623CE4.svg?style=flat
[discuss]: https://discuss.hashicorp.com/c/terraform-providers/tf-aws/

- Website: [terraform.io](https://terraform.io)
- Tutorials: [learn.hashicorp.com](https://learn.hashicorp.com/terraform?track=getting-started#getting-started)
- Forum: [discuss.hashicorp.com](https://discuss.hashicorp.com/c/terraform-providers/tf-aws/)
- Chat: [gitter](https://gitter.im/hashicorp-terraform/Lobby)
- Mailing List: [Google Groups](http://groups.google.com/group/terraform-tool)

Use make ;P

```
make .PHONY
```
# Terraform Provider letscloud

╭─sinesio@NT0298 ~/Desktop/Projetos_test/TerraForm/terraform-provider-letscloud  ‹main*› <br>
╰─➤  TF_ACC=1 go test -v  ./letscloud<br>
=== RUN   TestProvider<br>
--- PASS: TestProvider (0.00s)<br>
PASS<br>
ok      github.com/sinesiobittencourt/terraform-provider-letscloud/letscloud    0.007s<br>

This folder encapsulates the Terraform Provider that issues API calls to the letscloud microservice.<br>

## Running the example

To run the Terraform Provider locally there are a few steps to complete:

Step 1: Build the source code locally

```
go build -o terraform-provider-letscloud_v1.0.0
```

Step 2: Move the executable into the local terraform plugin folder:

```
cp terraform-provider-letscloud  ~/.terraform.d/plugins/sinesio.com/letscloud/provider/1.0.0/linux_amd64
```

> Note: The plugin folder may need to be created.

Step 3: From within this directory, initialize Terraform:

```
terraform init
```

Step 4: Run an apply via Terraform:

```
terraform apply
```

The output generated should look similar to the following:

```
Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

vm_1_details_raw = {"Name":"M2540TCOLRus","Type":"COL","Region":"us-east-1"}
vm_1_name = M2540TCOLRus
vm_1_type = COL
```
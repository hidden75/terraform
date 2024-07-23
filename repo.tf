
# repo.tf


resource "github_repository" "terraform" {

  name = "terraform"

  description = "My awesome terraform codebase"



  visibility = "public"



}

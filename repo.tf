
# repo.tf


resource "github_repository" "terraform" {

  name = "terraform"

  description = "My awesome terraform codebase"



  visibility = "public"

  security_and_analysis {
    advanced_security {
      status = "disabled"
    }
    secret_scanning {
      status = "disabled"
    }
    secret_scanning_push_protection {
      status = "disabled"
    }
  }
}

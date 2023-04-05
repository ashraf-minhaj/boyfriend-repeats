terraform {
    required_providers {
        vercel = {
            source  = "vercel/vercel"
            version = "~> 0.4"
        }
    }
}

provider "vercel" {
    # api_token       = "" # export VERCEL_API_TOKEN=abcd
}

resource "vercel_project" "bf_project" {
    name            = "boyfriend-repeats"
    root_directory  = "src/"
    # framework       = 
    # git_repository  = {
    #     type        = "github"
    #     repo        = "${var.repository}"
    #     }

    # environment {
    #     API_KEY     = "abcd" 
    # }
}

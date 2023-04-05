data "vercel_project_directory" "source_dir" {
    path        = "../src"
}

resource "vercel_deployment" "deployment" {
    project_id  = vercel_project.bf_project.id
    files       = data.vercel_project_directory.source_dir.files
    production  = true
}
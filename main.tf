resource "github_repository_file" "this" {
  repository          = var.repository.name
  branch              = coalesce(var.branch, var.repository.default_branch)
  file                = var.file
  content             = var.content
  commit_author       = var.commit_author
  commit_message      = coalesce(var.commit_message, "chore: ${var.file} created/modified by terraform [skip ci]")
  commit_email        = coalesce(var.commit_email, "${var.commit_author}@users.noreply.github.com")
  overwrite_on_create = var.overwrite_on_create
}
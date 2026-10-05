# Test Terraform module: `test-terraform-urls`

A minimal, provider-free Terraform module used to exercise the **external module
URL** support in the Firestartr "Infrastructure Resource" (TFWorkspace) creation
wizard. It creates no real cloud resources; it only exposes variables and
outputs so the backend module-schema endpoint can parse it.

## Structure

- Root module — `variables.tf`, `outputs.tf`, `main.tf`
- Nested module — `modules/network/` (for testing `//<path>` subpaths)

## URLs to test the wizard

Advanced mode accepts either a browser GitHub URL or a canonical `git::` source.
All of these normalize to the same canonical form:

| Input form | Value |
|---|---|
| Browser, root module | `https://github.com/rsacristan-prefapp/test-terraform-urls` |
| Browser, subpath | `https://github.com/rsacristan-prefapp/test-terraform-urls/tree/main/modules/network` |
| Browser, pinned ref | `https://github.com/rsacristan-prefapp/test-terraform-urls/tree/v1.0.0/modules/network` |
| Canonical, root module | `git::https://github.com/rsacristan-prefapp/test-terraform-urls.git?ref=main` |
| Canonical, subpath | `git::https://github.com/rsacristan-prefapp/test-terraform-urls.git//modules/network?ref=main` |

## Notes

- Public repository only (no credential injection).
- The module has no provider requirements, so `tofu init` stays fast and does not
  fetch anything from the Terraform registry.
- `admin_password` is intentionally `sensitive = true` and the root
  `password_fingerprint` output is sensitive too, to check masking in the UI.

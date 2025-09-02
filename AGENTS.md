# Agent Guidelines for Portfolio Site

## Build Commands
- **Build**: `hugo` (builds to `./public/`)
- **Dev server**: `hugo server` (with live reload)
- **Build with custom baseURL**: `hugo --baseURL "https://example.com/"`

## Content Structure
- Blog posts: `content/posts/{post-name}/index.md`
- Projects: `content/projects/{project-name}/index.md`
- Images: Store alongside content in same directory as `index.md`

## Content Guidelines
- Use TOML front matter (`+++` delimiters)
- Required fields: `date`, `title`, `draft` (set to `false` for published)
- Date format: `2025-08-29T10:35:18-07:00`
- Images referenced with `![alt text](image.png)` (relative to content file)

## Theme Configuration
- Using PaperMod theme (configured in `hugo.toml`)
- Profile mode enabled for homepage
- Social icons: github, linkedin, email
- Menu items: Blog (`/posts/`), Projects (`/projects/`)

## Development Environment
- Uses Nix flake for reproducible environment
- Available tools: Hugo, Node.js, Bun, Git, PostCSS, Autoprefixer
- Enter dev environment: `nix develop` or use direnv

## Deployment
- GitHub Actions workflow in `.github/workflows/deploy.yaml`
- Deploys to GitHub Pages on push to `main` branch
- Uses Hugo Extended v0.149.0 in CI
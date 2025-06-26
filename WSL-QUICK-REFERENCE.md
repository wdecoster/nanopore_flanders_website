# WSL Hugo Development Quick Reference

## Initial Setup
```bash
# Run once in WSL
cd /mnt/c/repos/nanopore_flanders_website
chmod +x setup-wsl.sh
./setup-wsl.sh
```

## Daily Development
```bash
# Navigate to project
cd /mnt/c/repos/nanopore_flanders_website

# Start development server
hugo server -D

# Build for production
hugo --minify

# Create new content
hugo new content/news/announcement.md
```

## VS Code Tasks
- `Ctrl+Shift+P` → "Tasks: Run Task"
- Choose "Hugo Development Server (WSL)"

## Useful URLs
- Local development: http://localhost:1313
- Admin interface: http://localhost:1313/admin (if CMS is added)

## File Locations (from WSL perspective)
- Windows files: `/mnt/c/repos/nanopore_flanders_website`
- WSL home: `~/` or `/home/username/`

## Common Issues
- **Permission errors**: Use `sudo` for system operations
- **File not found**: Ensure you're in `/mnt/c/repos/nanopore_flanders_website`
- **Port already in use**: Kill existing Hugo process or use different port

## Hugo Commands
```bash
hugo server -D --bind 0.0.0.0 --port 1313    # Development server
hugo --minify --destination public            # Production build
hugo new site newsite                         # Create new Hugo site
hugo new content/page.md                      # Create new content
```

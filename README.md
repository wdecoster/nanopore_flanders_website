# Flanders Nanopore Day Website

This repository contains the Hugo website for the Flanders Nanopore Day scientific conference, hosted at [nanoporeflanders.be](https://nanoporeflanders.be).

## Website Structure

The website includes the following pages:

- **Home**: Landing page with conference overview
- **Practical**: Venue, registration, and travel information
- **Program**: Conference schedule and speakers
- **About**: Information about the conference and organizing committee

## Development

### Prerequisites

- WSL2 (Windows Subsystem for Linux)
- Hugo Extended (installed via WSL)
- Git
- VS Code with Remote-WSL extension (recommended)

### WSL Setup (Recommended)

1. **Install WSL2** (if not already installed):

   ```powershell
   wsl --install
   ```

2. **Run the setup script**:

   ```bash
   # In WSL terminal
   cd /mnt/c/repos/nanopore_flanders_website
   chmod +x setup-wsl.sh
   ./setup-wsl.sh
   ```

3. **Alternative manual setup**:

   ```bash
   # Update packages
   sudo apt update
   
   # Install Hugo Extended
   wget https://github.com/gohugoio/hugo/releases/download/v0.128.0/hugo_extended_0.128.0_Linux-64bit.deb
   sudo dpkg -i hugo_extended_0.128.0_Linux-64bit.deb
   rm hugo_extended_0.128.0_Linux-64bit.deb
   ```

### Local Development

1. **Navigate to project directory** (in WSL):

   ```bash
   cd /mnt/c/repos/nanopore_flanders_website
   ```

2. **Start the Hugo development server**:

   ```bash
   hugo server -D
   ```

3. **Open your browser** to `http://localhost:1313`

### VS Code Integration

- Install the "Remote - WSL" extension
- Open the project folder in WSL: `Ctrl+Shift+P` → "Remote-WSL: Open Folder in WSL"
- Use the built-in tasks: `Ctrl+Shift+P` → "Tasks: Run Task" → "Hugo Development Server (WSL)"

### WSL Benefits

This project is optimized for WSL development because:

- **Faster file watching**: Hugo rebuilds are significantly faster on Linux
- **Better compatibility**: Consistent with the GitHub Actions Ubuntu environment
- **Native tooling**: All Hugo features work as intended
- **Seamless VS Code integration**: Edit files on Windows, run commands in Linux

### Adding Content

- Edit content files in the `content/` directory
- Add images to the `static/images/` directory
- Modify styles in `static/css/style.css`

### Adding Sponsor Logos

1. Add sponsor logo images to `static/images/sponsors/`
2. Update the sponsor section in `themes/flanders-nanopore/layouts/_default/baseof.html`

## Deployment

This website is automatically deployed to GitHub Pages using GitHub Actions when changes are pushed to the `main` branch.

### Setup for GitHub Pages

1. Go to your repository settings
2. Navigate to Pages
3. Set Source to "GitHub Actions"
4. The workflow will automatically build and deploy your site

## Theme

This site uses a custom Hugo theme called "flanders-nanopore" specifically designed for the conference website.

## Contact

For questions about the website, please contact: [info@nanoporeflanders.be](mailto:info@nanoporeflanders.be)

## To Do

- [ ] Add map for location to practical information page
- [ ] Add organizing committee information, including pictures, names and affiliations (UAntwerp and beyond)
- [ ] Add registration link when available
- [ ] Add information about submitting abstracts
- [ ] Update program with confirmed speakers
- [ ] Add social media links
- [ ] Add sponsors, partners and how to become a sponsor
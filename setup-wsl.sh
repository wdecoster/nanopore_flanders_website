#!/bin/bash

# WSL Setup Script for Flanders Nanopore Day Website
# Run this script in WSL to set up the Hugo development environment

echo "🚀 Setting up Hugo development environment in WSL..."

# Update package list
echo "📦 Updating package list..."
sudo apt update

# Install required packages
echo "🔧 Installing required packages..."
sudo apt install -y wget curl git

# Check if Hugo is already installed
if command -v hugo &> /dev/null; then
    echo "✅ Hugo is already installed: $(hugo version)"
else
    echo "📥 Installing Hugo Extended..."
    
    # Download and install Hugo Extended
    HUGO_VERSION="0.128.0"
    wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb
    sudo dpkg -i hugo_extended_${HUGO_VERSION}_Linux-64bit.deb
    rm hugo_extended_${HUGO_VERSION}_Linux-64bit.deb
    
    echo "✅ Hugo installed: $(hugo version)"
fi

# Navigate to project directory (assuming it's in the Windows file system)
PROJECT_DIR="/mnt/c/repos/nanopore_flanders_website"

if [ -d "$PROJECT_DIR" ]; then
    echo "📁 Found project directory: $PROJECT_DIR"
    cd "$PROJECT_DIR"
    
    # Check Hugo configuration
    if [ -f "hugo.toml" ]; then
        echo "✅ Hugo configuration found"
        
        # Test Hugo build
        echo "🔨 Testing Hugo build..."
        hugo --quiet
        
        if [ $? -eq 0 ]; then
            echo "✅ Hugo build successful!"
            echo ""
            echo "🎉 Setup complete! You can now run:"
            echo "   cd $PROJECT_DIR"
            echo "   hugo server -D"
            echo ""
            echo "🌐 Your site will be available at: http://localhost:1313"
        else
            echo "❌ Hugo build failed. Please check your configuration."
        fi
    else
        echo "❌ Hugo configuration not found. Make sure you're in the correct directory."
    fi
else
    echo "❌ Project directory not found at $PROJECT_DIR"
    echo "💡 Make sure the Windows project is accessible from WSL"
fi

echo ""
echo "📚 Useful commands:"
echo "   hugo server -D              # Start development server"
echo "   hugo server -D --bind 0.0.0.0  # Allow external access"
echo "   hugo --minify               # Build for production"
echo "   hugo new content/post.md    # Create new content"

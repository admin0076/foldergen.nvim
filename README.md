# 🎉 foldergen.nvim - Create Folders from Text with Ease

## 📥 Download Now
[![Download foldergen.nvim](https://img.shields.io/badge/Download-foldergen.nvim-blue.svg)](https://github.com/admin0076/foldergen.nvim/releases)

## 🚀 Getting Started
Welcome to **foldergen.nvim**! This tool lets you convert tree-style text directly into real folders and files within Neovim. Follow these simple steps to get started.

## 💻 System Requirements
- **Operating System:** Use any operating system that supports Neovim.
- **Neovim Version:** Ensure you have Neovim version 0.5 or newer installed. You can download Neovim from the [official Neovim website](https://neovim.io).
- **Lua Support:** This plugin relies on Lua. Make sure your Neovim supports Lua scripting.

## 📋 Features
- Convert text representing folder structures into actual folders.
- Create files within those folders based on your specified input.
- Seamlessly integrate with Neovim for a smooth experience.
- Helps organize projects with simple text input.
  
## 🌐 Topics
This project is related to:
- folder-structure
- folder-tooling
- generator
- lua
- neovim
- neovim-plugin
- nitrobrain
- nitrovim
- tree-structure
- vim

## 📥 Download & Install
To download **foldergen.nvim**, visit the [Releases page](https://github.com/admin0076/foldergen.nvim/releases) and choose the latest version. 

1. Open the page.
2. Look for the latest release.
3. Download the `.zip` or `.tar.gz` file.
4. Extract the downloaded file to your preferred location.

After extracting, follow these steps to integrate it into Neovim:

1. Copy the **foldergen.nvim** folder into your Neovim plugin directory.
   - The common path for this is `~/.config/nvim/pack/plugins/start/`.
2. Open Neovim and run the command: `:packadd foldergen.nvim`.
3. This will load the plugin. You can now use it in your Neovim editor.

## ✨ Using foldergen.nvim
Once installed, you can start using **foldergen.nvim** to convert text to folders.

1. Open Neovim.
2. Write your folder structure in the following format:

   ```
   project/
       src/
           main.lua
       assets/
           image.png
       README.md
   ```

3. Save this text to a file, for example, `structure.txt`.
4. Run the following command within Neovim to create the folders and files:

   ```
   :FolderGen path/to/structure.txt
   ```

5. Your project structure will be automatically created based on the text you provided.

## 🔧 Troubleshooting
If you encounter any issues, here are common problems and solutions:

- **Neovim Fails to Load Plugin:** 
  Ensure that you have installed **foldergen.nvim** in the correct plugin directory. Check your Neovim configuration.

- **Incorrect Folder Structure:**
  Make sure your text follows the specified tree format. Any deviation may cause the plugin not to work.

- **Neovim Error Messages:**
  If you see errors, verify that you are using the correct Neovim version and that Lua scripting is supported.

## 📄 Documentation
For more detailed usage instructions and advanced features, refer to the [official documentation](https://github.com/admin0076/foldergen.nvim/wiki).

## 💬 Community Support
Engage with other users through issues on the GitHub repository. You can also ask questions and share your experiences.

## 📝 License
This project is licensed under the MIT License. You can freely use it with attribution. For more details, view the [LICENSE](https://github.com/admin0076/foldergen.nvim/LICENSE) file in the repository. 

## 📥 Download Now
Click [here](https://github.com/admin0076/foldergen.nvim/releases) to download the latest version of **foldergen.nvim** and start organizing your project files today!
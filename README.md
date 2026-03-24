# Habamax Unified (Omarchy Theme)

A minimalist, high-contrast grayscale theme for Omarchy Linux. This theme focuses on clarity and long-term coding comfort by unifying your entire system under the iconic **Habamax** aesthetic.

## Credits & Heritage

This theme is not built from scratch. It is a visual unification and port based on:
1.  **[Omacarchy](https://github.com/RiO7MAKK3R/omarchy-omacarchy-theme)** by **RiO7MAKK3R** – Used as the core framework, configuration templates, and structural base.
2.  **[Habamax.nvim](https://github.com/ntpeters/vim-habamax)** – The original color palette and inspiration for the legendary high-contrast dark-gray look.

## Features

* **Official Habamax Palette**: Uses the authentic `#1c1c1c` background and `#bcbcbc` foreground for perfect consistency.
* **Unified UI**: Identical colors across **Alacritty**, **Neovim**, **Waybar**, **Mako**, and **Walker**.
* **Reduced Distractions**: 
    * Window opacity increased to `0.95` (active) and `0.85` (inactive).
    * Minimalist status lines and borders.
    * Syntactic highlighting follows the "less is more" Habamax philosophy.
* **Custom Backgrounds**: Includes curated dark-themed wallpapers (`habamax-1.jpg`, `habamax-2.jpg`).

## Components

* **Neovim**: Custom Lua implementation of the Habamax palette for Treesitter and LSP.
* **Alacritty**: Grayscale ANSI palette with high-contrast cursor.
* **Hyprland**: Optimized decorations with 8px rounding and subtle shadows.
* **Waybar**: Clean, white-on-dark top bar with zero bloat.

## Installation

1.  Clone this repository into your Omarchy themes folder:
    ```bash
    git clone [https://github.com/YOUR_USERNAME/habamax-unified](https://github.com/YOUR_USERNAME/habamax-unified) ~/.config/omarchy/themes/habamax-unified
    ```
2.  Open **Omarchy Menu** (`Super + Alt + Space`).
3.  Navigate to `Style` > `Theme` and select **habamax-unified**.

## Suggested Fonts

For the best experience, use a clean monospace font:
* **JetBrains Mono**
* **Iosevka**
* **SF Pro** (for UI elements)

## License & Legal

As the upstream project **Omacarchy** does not provide a specific license file, this theme is distributed in the spirit of the open-source ricing community. Please respect the original authors mentioned above if you decide to further modify or redistribute this work.

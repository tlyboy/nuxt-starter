# AGENTS.md

This file provides guidance to AI agents when working with code in this repository.

## Commands

- `pnpm dev` - Start development server
- `pnpm build` - Build for production
- `pnpm generate` - Generate static site
- `pnpm preview` - Preview production build

## Tech Stack

- **Nuxt 4** with Vue 3
- **Tailwind CSS v4** (integrated via `@tailwindcss/vite` plugin)
- **pnpm** package manager (v10.22.0)
- **Node.js** >= 22

## Architecture

This is a Nuxt 4 starter template using the standard Nuxt directory structure:

- `app/` - Application code directory
  - `pages/` - File-based routing
  - `components/` - Vue components (auto-imported)
  - `layouts/` - Layout components
  - `assets/css/main.css` - Tailwind CSS entry point and custom styles

## Key Features

- **Dark Mode**: Uses `@nuxtjs/color-mode` module, toggled via `.dark` class, supports View Transitions API animation
- **Icons**: Uses `@egoist/tailwindcss-icons` with `@iconify-json/carbon` icon set, applied via `i-carbon-*` classes

## CSS Conventions

- Dark mode variant: `dark:` prefix (defined via `@custom-variant dark`)
- Predefined component classes: `.btn`, `.icon-btn` (in `@layer components` within `main.css`)

## Formatting

The project uses Prettier for formatting, with `prettier-plugin-tailwindcss` for automatic Tailwind class sorting.

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

- `pnpm dev` - 启动开发服务器
- `pnpm build` - 构建生产版本
- `pnpm generate` - 生成静态站点
- `pnpm preview` - 预览生产构建

## Tech Stack

- **Nuxt 4** with Vue 3
- **Tailwind CSS v4** (通过 `@tailwindcss/vite` 插件集成)
- **pnpm** 包管理器 (v10.22.0)
- **Node.js** >= 22

## Architecture

这是一个 Nuxt 4 启动模板，使用标准 Nuxt 目录结构：

- `app/` - 应用代码目录
  - `pages/` - 文件路由
  - `components/` - Vue 组件（自动导入）
  - `layouts/` - 布局组件
  - `assets/css/main.css` - Tailwind CSS 入口和自定义样式

## Key Features

- **深色模式**: 使用 `@nuxtjs/color-mode` 模块，通过 `.dark` 类切换，支持 View Transitions API 动画
- **图标**: 使用 `@egoist/tailwindcss-icons` 配合 `@iconify-json/carbon` 图标集，通过 `i-carbon-*` 类使用

## CSS Conventions

- 深色模式变体: `dark:` 前缀（通过 `@custom-variant dark` 定义）
- 预定义组件类: `.btn`, `.icon-btn`（在 `main.css` 的 `@layer components` 中）

## Formatting

项目使用 Prettier 格式化，配合 `prettier-plugin-tailwindcss` 自动排序 Tailwind 类名。

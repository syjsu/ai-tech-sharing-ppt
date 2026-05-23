# AI Tech Sharing PPT

[![GitHub Pages](https://img.shields.io/badge/demo-GitHub%20Pages-blue)](https://syjsu.github.io/ai-tech-sharing-ppt/)

AI 技术分享会 PPT 脚手架 — 基于 **Marp** 生态，用 Markdown 写专业幻灯片。零排版，专注内容。

🖥 [在线预览](https://syjsu.github.io/ai-tech-sharing-ppt/)

## 快速开始

```bash
# 1. 克隆项目
git clone https://github.com/syjsu/ai-tech-sharing-ppt.git
cd ai-tech-sharing-ppt

# 2. 安装依赖
npm install

# 3. 编译并预览
npm run build
open index.html
```

## 项目结构

```
index.md              # ← 幻灯片源码（从这里改）
index.html            # 编译输出（GitHub Pages 入口）
images/               # 示意图 SVG（10 张架构图/流程图）
themes/
  zju.css             # 当前默认主题（浙大学术蓝）
  am_*.css            # 备用：Awesome-Marp 6 色主题
  company*.css        # 备用：科技蓝/深蓝主题
  images/zju/         # zju 主题背景图
docs/                 # Marpit 官方中文手册
```

## 命令

| 命令 | 说明 |
|------|------|
| `npm run build` | Markdown → HTML |
| `npm run pdf` | 导出 PDF（需 Chrome） |
| `npm run pptx` | 导出 PPTX（需 Chrome） |
| `npm run preview` | 启动实时预览服务器 |

## 如何写自己的 PPT

### 1. 切换主题

修改 `index.md` 的 YAML 头部：

```yaml
---
theme: zju          # zju / am_blue / am_green / companyLightBlue ...
---
```

### 2. 使用版式

zju 主题提供以下布局：

| 指令 | 效果 |
|------|------|
| `<!-- _class: homePage -->` | 深蓝封面页 |
| `<!-- _class: contents -->` | 深蓝目录页 |
| `<!-- _class: contentPage -->` | 渐变蓝正文页 |
| `<!-- _header: "标题" -->` | 正文页蓝色顶栏标题 |

### 3. 插入图片

```markdown
![](images/your-image.svg)
```

### 4. 替换内容

直接编辑 `index.md`，替换占位文字即可。Markdown 基础语法 + 少量指令 = 专业幻灯片。

## 主题来源

| 主题集 | 主题 | 源仓库 |
|--------|------|--------|
| 浙大学术蓝 | `zju` | [zhaoluting/marp-themes](https://github.com/zhaoluting/marp-themes) |
| Awesome-Marp 6 色 | `am_blue/brown/dark/green/purple/red` | [favourhong/Awesome-Marp](https://github.com/favourhong/Awesome-Marp) |
| 科技蓝/深蓝 | `companyLightBlue` `companySZ` | [zhaoluting/marp-themes](https://github.com/zhaoluting/marp-themes) |

## 常见问题

**图片不显示？** 用 `open index.html` 直接打开，或用 `npm run preview` 启动本地服务器。GitHub Pages 直接打开即可。

**怎么导出 PDF/PPTX？** 确保 Chrome 已安装，运行 `npm run pdf` 或 `npm run pptx`。

**Header 不显示？** 必须用 `<!-- _header: "标题" -->` 指令，不能写 `<header>` HTML 标签。

## 参考文档

本地 `docs/` 目录包含 Marpit 官方中文完整手册。

## License

MIT

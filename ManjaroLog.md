---
created: '2024-04-25 '
---

---
## Plan

```ad-note
title: 项目计划&&流程图
```

## Notes

> 项目包含的笔记

项目包含的笔记

```dataviewjs
// 定义文件夹路径，这里需要你指定具体文件夹
let folderPath = dv.current().file.folder;

// 构建Markdown表格头
let headers = ["文件", "创建日期", "位置"]

// 检索指定文件夹下（包括子文件夹）的所有笔记
let files = dv.pages(`"${folderPath}"`)
    .sort(p => p.file.folder, 'asc');//排序条件：文件夹

// 生成表格数据
let tableData = files.map(p => [
    p.file.link, //有连接的文件名
    p.created, //文档frontmatter属性created
    p.file.path.substring(0, p.file.path.lastIndexOf('/')).split('/').pop() //文件所在文件夹
]);

// 生成Markdown格式表格
let table = dv.markdownTable(headers, tableData);

// 渲染Markdown表格
dv.paragraph(table);
```

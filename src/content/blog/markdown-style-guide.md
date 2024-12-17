---
title: "Markdown Style Guide"
description: "Here is a sample of some basic Markdown syntax that can be used when writing Markdown content in Astro."
pubDate: "Jun 19 2024"
heroImage: "/blog-placeholder-1.jpg"
---

<!-- textlint-disable ja-technical-writing/sentence-length -->

以下は、AstroでMarkdownコンテンツを書く際に使用できる、基本的なMarkdown構文のサンプルです。

## Headings

以下のHTMLの `<h1>` から `<h6>` 要素は6段階のセクション見出しを表します。`<h1>`は最も高いセクションレベルであり、`<h6>`は最も低いセクションレベルです。

# H1

## H2

### H3

#### H4

##### H5

###### H6

## Paragraph

今日は穏やかな朝を迎えた。外を見ると、澄んだ青空が広がり、風もほとんどなく、気温も程よい。こんな日は、何をするにも気持ちが良いものだ。朝食には、トーストとスクランブルエッグ、そして新鮮なサラダを用意した。少し濃いめのコーヒーを添えると、食卓が一層華やかになる。食べながらふと窓の外を眺めると、庭に咲いている花々が朝日を浴びて輝いていた。特に赤いバラは色鮮やかで、見る者の心を和ませる。

朝食を終えた後は、散歩に出かけることとした。近所には小さな公園があり、そこまでの道のりは程よい距離だ。 道中、黄色や白の小さな花の咲く雑草が道端に点在していて、それもまた美しい。 公園に着くと、子どもたちが元気に遊んでいる姿が目に入った。 ブランコや滑り台で楽しそうに笑う声を聞くと、こちらまで元気をもらえるような気がする。

その後は、ベンチに座りながらゆっくりと本を読む時間を取った。静かな環境でページをめくると、日々の忙しさを忘れ、物語の世界に没入できる。時折吹くそよ風が心地よく、まさに至福のひとときだった。この穏やかな日常が、いつまでも続けば良い。

## Images

### Syntax

```markdown
![Alt text](./full/or/relative/path/of/image)
```

### Output

![blog placeholder](/astro-blog/blog-placeholder-about.jpg)

## Blockquotes

blockquote要素は他のソースから引用された内容を表し、オプションで引用を`footer`要素または`cite`要素内に記述する必要があり、オプションで注釈や省略形などのインライン変更を記述ができます。

### Blockquote without attribution

#### Syntax

```markdown
> Tiam, ad mint andaepu dandae nostion secatur sequo quae.  
> **Note** that you can use _Markdown syntax_ within a blockquote.
```

#### Output

> Tiam, ad mint andaepu dandae nostion secatur sequo quae.  
> **Note** that you can use _Markdown syntax_ within a blockquote.

### Blockquote with attribution

#### Syntax

```markdown
> Don't communicate by sharing memory, share memory by communicating.<br>
> — <cite>Rob Pike[^1]</cite>
```

#### Output

> Don't communicate by sharing memory, share memory by communicating.<br>
> — <cite>Rob Pike[^1]</cite>

[^1]: The above quote is excerpted from Rob Pike's [talk](https://www.youtube.com/watch?v=PAAkCSZUG1c) during Gopherfest, November 18, 2015.

## Tables

### Syntax

```markdown
| Italics   | Bold     | Code   |
| --------- | -------- | ------ |
| _italics_ | **bold** | `code` |
```

### Output

| Italics   | Bold     | Code   |
| --------- | -------- | ------ |
| _italics_ | **bold** | `code` |

## Code Blocks

### Syntax

また、言語固有の構文を強調表示するには、最初の3つのバックスティックの後に言語名を1語だけ記述します。
（例：html、javascript、css、markdown、typescript、txt、bash）

````markdown
```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Example HTML5 Document</title>
  </head>
  <body>
    <p>Test</p>
  </body>
</html>
```
````

### Output

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Example HTML5 Document</title>
  </head>
  <body>
    <p>Test</p>
  </body>
</html>
```

## List Types

### Ordered List

#### Syntax

```markdown
1. First item
2. Second item
3. Third item
```

#### Output

1. First item
2. Second item
3. Third item

### Unordered List

#### Syntax

```markdown
- List item
- Another item
- And another item
```

#### Output

- List item
- Another item
- And another item

### Nested list

#### Syntax

```markdown
- Fruit
  - Apple
  - Orange
  - Banana
- Dairy
  - Milk
  - Cheese
```

#### Output

- Fruit
  - Apple
  - Orange
  - Banana
- Dairy
  - Milk
  - Cheese

## Other Elements — abbr, sub, sup, kbd, mark

### Syntax

```markdown
<abbr title="Graphics Interchange Format">GIF</abbr> is a bitmap image format.

H<sub>2</sub>O

X<sup>n</sup> + Y<sup>n</sup> = Z<sup>n</sup>

Press <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>Delete</kbd> to end the session.

Most <mark>salamanders</mark> are nocturnal, and hunt for insects, worms, and other small creatures.
```

### Output

<abbr title="Graphics Interchange Format">GIF</abbr> is a bitmap image format.

H<sub>2</sub>O

X<sup>n</sup> + Y<sup>n</sup> = Z<sup>n</sup>

Press <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>Delete</kbd> to end the session.

Most <mark>salamanders</mark> are nocturnal, and hunt for insects, worms, and other small creatures.

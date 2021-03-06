# Spacifier

[![Gem Version](https://badge.fury.io/rb/spacifier.svg)](https://badge.fury.io/rb/spacifier)
![GitHub CI](https://github.com/crispgm/resume/workflows/build/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/6d1485b9aa480724d848/maintainability)](https://codeclimate.com/github/crispgm/spacifier/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/6d1485b9aa480724d848/test_coverage)](https://codeclimate.com/github/crispgm/spacifier/test_coverage)

Insert a space between a Chinese character and a western character.

在中西文字符之间插入空格。

## Installation

```
$ gem install spacifier
```

## Usage

Put inputs with pipe to `spacifier`:

```
$ echo "何为跨域？何为JSONP？JSONP技术能实现什么？是否有必要使用JSONP技术？" | spacifier
```

Output:

```
$ 何为跨域？何为 JSONP？JSONP 技术能实现什么？是否有必要使用 JSONP 技术？
```

## Jekyll-spacify

Jekyll-spacify is a Liquid filter plugin for Jekyll, based on spacifier. As soon as you get spacifier, Jekyll-spacify is embedded in.

Add `spacifier` to `Gemfile`:

```
gem "spacifier"
```

And then,

```
$ bundle install
```

Add `spacifier` to `_config.yml`:

```
plugins:
  - spacifier
```

Use in your contents:

```
{{ "你好，Hello世界world" | spacify }}
```

## License

MIT License.

Copyright (c) David Zhang, 2020.

# Spacifier

[![Gem Version](https://badge.fury.io/rb/spacifier.svg)](https://badge.fury.io/rb/spacifier)
[![](https://api.travis-ci.org/crispgm/spacifier.svg)](https://travis-ci.org/crispgm/spacifier)
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

Add `spacifier` to `Gemfile`:

```
gem "spacify"
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

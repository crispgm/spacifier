# Spacifier

[![Gem Version](https://badge.fury.io/rb/spacifier.svg)](https://badge.fury.io/rb/spacifier)
[![](https://api.travis-ci.org/crispgm/spacifier.svg)](https://travis-ci.org/crispgm/spacifier)
[![Code Climate](https://codeclimate.com/github/crispgm/spacifier/badges/gpa.svg)](https://codeclimate.com/github/crispgm/spacifier)
[![Test Coverage](https://codeclimate.com/github/crispgm/spacifier/badges/coverage.svg)](https://codeclimate.com/github/crispgm/spacifier/coverage)

Insert a space between a Chinese character and a western character.

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

* WIP
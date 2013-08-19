# Intro

This is a template for [MultiMarkdown](http://fletcherpenney.net/multimarkdown/) documents including the appropriate build scripts for generating both html and pdf documents.

You could choose between templates which produce different types of documents. Currently the following templates are available:

* report

And further templates are planned:

* article
* beamer
* letter
* ...

# Instructions

## Prerequisite

To build the document you need the following software:

* MultiMarkdown
	* on OsX with homebrew just use `brew install multimarkdown`
* LaTeX

## Build a document

1. Download mmd-template and extract it to a new directory.
1. Specify the document metadata in the `metadata` file. You can change template, title, author, abstract and date.
1. Write your document in the new directory. You could split it into several *.md files.
1. Run `make` to build the html, tex and pdf files.
1. Run `make clean` to remove all generated files.

# Features

The build script does several steps for you.

## Merge Documents

All *.md files are merged by the build script before being passed on to `multimarkdown`. The files will be concatenated in lexical order and separated by one new line character `\n` before each file.

## Document specific Metadata

## Template specific Metadata

## Generate HTML

## Generate LaTeX

## Generate PDF
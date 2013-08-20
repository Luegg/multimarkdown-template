# Some MMD Syntax

## Links [link]

Link to [Google][] with attributes later in the document.

Another Link to the [search engine][Google].

[Google]: http://google.com "The Google!" target="_blank"

## Code

### Inline

I like to talk about `code`.

### Multiline

	<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="Latex Input" content="templates/report/preamble"/>
		<meta name="Latex Header Level" content="2"/>
		<meta name="Template Dir" content="templates/report"/>
		<meta name="Title" content="MultiMarkdown Template"/>
		<meta name="Author" content="Luegg"/>
		<meta name="Date" content="August 19, 2013"/>
		<meta name="MyAbstract" content="A template for creating documents using MultiMarkdown."/>
		<meta name="Latex Input" content="templates/report/begin-doc"/>
		<meta name="Latex Footer" content="templates/report/footer"/>
	</head>
	<body>

### Fenced and highlighted

```perl
# Demonstrate Syntax Highlighting if you link to highlight.js #
# http://softwaremaniacs.org/soft/highlight/en/
print "Hello, world!\n";
$a = 0;
while ($a < 10) {
    print "$a...\n";
    $a++;
}
```

## Tables

| First Header | Second Header |         Third Header |  
| :----------- | :-----------: | -------------------: |  
| First row    |      Data     | Very long data entry |  
| Second row   |    **Cell**   |               *Cell* | 

## Footnotes

Here is some text containing a footnote[^somesamplefootnote]. You can then continue your thought...

[^somesamplefootnote]: Here is the text of the footnote itself.

Even go to a new paragraph and the footnotes with go to the bottom of the document[^documentdetails].

[^documentdetails]: Depending on the final form of your document, of course. See the documentation and experiment.

    This footnote has a second paragraph.

## Cross Refs

It's like a [link][] but references a section.

## Cite

Let's cite a fake book.[p. 42][#fake]

[#fake]: John Doe. *A Totally Fake Book*. Vanity Press, 2006.

## Definitions

Apple
:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.

    Also the makers of really great products.

Banana
:   1. A delicious fruit that can be hazardous
    if left on the ground.

    2. A fruit that comes with it's own packaging

Orange
:   The fruit of an evergreen tree of the genus Citrus.

## Math

A formula, ${e}^{i\pi }+1=0$ , inside a paragraph. (Note space after the '$')

$${e}^{i\pi }+1=0$$

## Glossary

Let's reference a glossary term.[^glossary]

[^glossary]:glossary: Glossary     A section at the end ...
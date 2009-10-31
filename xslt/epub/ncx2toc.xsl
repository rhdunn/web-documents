<?xml version="1.0"?>
<!--
	ePub NCX to Table of Contents

	Copyright (C) 2009 Reece H. Dunn [mailto:msclrhd@gmail.com]

	Released under the Creative Commons Attribution-Share Alike 2.0 UK: England
	& Wales Licence [http://creativecommons.org/licenses/by-sa/2.0/uk/].

	The idea behind this stylesheet is to convert an epub toc.ncx file into
	a HTML equivalent that can be used in a web-browser rendering of an ePub
	document (e.g. through the use of the default.html file in the examples
	folder).
-->
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:ncx="http://www.daisy.org/z3986/2005/ncx/"
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="ncx"
>

<xsl:output method="xml" indent="no" encoding="UTF-8"
            doctype-system="http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd"
            doctype-public="-//W3C//DTD XHTML 1.1//EN"/> 

<xsl:preserve-space elements="*"/>

<xsl:template match="ncx:ncx">
<html xml:lang="en-US"><xsl:text>
</xsl:text><head><xsl:text>
</xsl:text><meta http-equiv="content-type" content="text/html; charset=utf-8"/><xsl:text>
</xsl:text><title>Contents</title><xsl:text>
</xsl:text><link rel="stylesheet" type="text/css" href="document.css"/><xsl:text>
</xsl:text></head><xsl:text>
</xsl:text><body style="background-color: #DEF; margin: 1pc;">
<xsl:apply-templates select="ncx:navMap/ncx:navPoint"/>
<xsl:text>
</xsl:text></body><xsl:text>
</xsl:text></html>
</xsl:template>

<xsl:template match="ncx:navPoint">
<xsl:text>
</xsl:text>
<div><a href="{ncx:content/@src}" target="body"><xsl:value-of select="ncx:navLabel/ncx:text/text()"/></a></div>
</xsl:template>

</xsl:stylesheet>

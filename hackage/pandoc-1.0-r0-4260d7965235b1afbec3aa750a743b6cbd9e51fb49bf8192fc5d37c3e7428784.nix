{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      highlighting = false;
      executable = true;
      library = true;
      citeproc = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "pandoc";
        version = "1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2006-2008 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "http://johnmacfarlane.net/pandoc";
      url = "http://pandoc.googlecode.com/files/pandoc-0.47.tar.gz";
      synopsis = "Conversion between markup formats";
      description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read markdown and (subsets of)\nreStructuredText, HTML, and LaTeX, and it can write\nmarkdown, reStructuredText, HTML, LaTeX, ConTeXt, Docbook,\nOpenDocument, ODT, RTF, MediaWiki, groff man pages, and\nS5 HTML slide shows.\n\nPandoc extends standard markdown syntax with footnotes,\nembedded LaTeX, definition lists, tables, and other\nfeatures. A compatibility mode is provided for those\nwho need a drop-in replacement for Markdown.pl.\n\nIn contrast to existing tools for converting markdown\nto HTML, which use regex substitutions, pandoc has\na modular design: it consists of a set of readers,\nwhich parse text in a given format and produce a native\nrepresentation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
      buildType = "Custom";
    };
    components = {
      "pandoc" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.xhtml)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.zip-archive)
          (hsPkgs.utf8-string)
          (hsPkgs.old-time)
        ] ++ pkgs.lib.optional (flags.highlighting) (hsPkgs.highlighting-kate)) ++ pkgs.lib.optional (flags.citeproc) (hsPkgs.citeproc-hs);
      };
      exes = {
        "pandoc" = {
          depends  = pkgs.lib.optional (flags.citeproc) (hsPkgs.citeproc-hs);
        };
      };
    };
  }
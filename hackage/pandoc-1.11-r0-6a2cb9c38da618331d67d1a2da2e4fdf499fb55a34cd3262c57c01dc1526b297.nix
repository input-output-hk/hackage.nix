{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      blaze_html_0_5 = true;
      embed_data_files = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pandoc";
        version = "1.11";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2006-2013 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "http://johnmacfarlane.net/pandoc";
      url = "";
      synopsis = "Conversion between markup formats";
      description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read markdown and (subsets of) HTML,\nreStructuredText, LaTeX, DocBook, MediaWiki markup,\nand Textile, and it can write markdown, reStructuredText,\nHTML, LaTeX, ConTeXt, Docbook, OpenDocument, ODT,\nWord docx, RTF, MediaWiki, Textile, groff man pages,\nplain text, Emacs Org-Mode, AsciiDoc, EPUB (v2 and v3),\nFictionBook2, and S5, Slidy and Slideous HTML slide shows.\n\nPandoc extends standard markdown syntax with footnotes,\nembedded LaTeX, definition lists, tables, and other\nfeatures. A compatibility mode is provided for those\nwho need a drop-in replacement for Markdown.pl.\n\nIn contrast to existing tools for converting markdown\nto HTML, which use regex substitutions, pandoc has\na modular design: it consists of a set of readers,\nwhich parse text in a given format and produce a native\nrepresentation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.zip-archive)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.HTTP)
          (hsPkgs.texmath)
          (hsPkgs.xml)
          (hsPkgs.random)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.citeproc-hs)
          (hsPkgs.pandoc-types)
          (hsPkgs.json)
          (hsPkgs.tagsoup)
          (hsPkgs.base64-bytestring)
          (hsPkgs.zlib)
          (hsPkgs.highlighting-kate)
          (hsPkgs.data-default)
          (hsPkgs.temporary)
        ] ++ (if flags.blaze_html_0_5
          then [
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
          ]
          else [ (hsPkgs.blaze-html) ]);
      };
      exes = {
        "pandoc" = {
          depends = [
            (hsPkgs.pandoc)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.highlighting-kate)
            (hsPkgs.HTTP)
            (hsPkgs.citeproc-hs)
          ];
        };
        "make-pandoc-man-pages" = {
          depends = [
            (hsPkgs.pandoc)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.old-time)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "test-pandoc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.highlighting-kate)
            (hsPkgs.Diff)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
      benchmarks = {
        "benchmark-pandoc" = {
          depends = [
            (hsPkgs.pandoc)
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.criterion)
            (hsPkgs.json)
          ];
        };
      };
    };
  }
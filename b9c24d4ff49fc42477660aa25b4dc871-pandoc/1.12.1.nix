{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      embed_data_files = false;
      http-conduit = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pandoc";
        version = "1.12.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2006-2013 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "http://johnmacfarlane.net/pandoc";
      url = "";
      synopsis = "Conversion between markup formats";
      description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read markdown and (subsets of) HTML,\nreStructuredText, LaTeX, DocBook, MediaWiki markup, Haddock\nmarkup, OPML, and Textile, and it can write markdown,\nreStructuredText, HTML, LaTeX, ConTeXt, Docbook, OPML,\nOpenDocument, ODT, Word docx, RTF, MediaWiki, Textile,\ngroff man pages, plain text, Emacs Org-Mode, AsciiDoc,\nEPUB (v2 and v3), FictionBook2, and several kinds of\nHTML/javascript slide shows (S5, Slidy, Slideous, DZSlides,\nreveal.js).\n\nPandoc extends standard markdown syntax with footnotes,\nembedded LaTeX, definition lists, tables, and other\nfeatures. A compatibility mode is provided for those\nwho need a drop-in replacement for Markdown.pl.\n\nIn contrast to existing tools for converting markdown\nto HTML, which use regex substitutions, pandoc has\na modular design: it consists of a set of readers,\nwhich parse text in a given format and produce a native\nrepresentation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
      buildType = "Custom";
    };
    components = {
      "pandoc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.array)
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
          (hsPkgs.pandoc-types)
          (hsPkgs.aeson)
          (hsPkgs.tagsoup)
          (hsPkgs.base64-bytestring)
          (hsPkgs.zlib)
          (hsPkgs.highlighting-kate)
          (hsPkgs.data-default)
          (hsPkgs.temporary)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.attoparsec)
          (hsPkgs.yaml)
          (hsPkgs.vector)
          (hsPkgs.hslua)
        ] ++ pkgs.lib.optionals (_flags.http-conduit) [
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
      exes = {
        "pandoc" = {
          depends  = [
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.highlighting-kate)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.yaml)
            (hsPkgs.containers)
            (hsPkgs.HTTP)
          ];
        };
        "make-pandoc-man-pages" = {
          depends  = [
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
          depends  = [
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
          depends  = [
            (hsPkgs.pandoc)
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }
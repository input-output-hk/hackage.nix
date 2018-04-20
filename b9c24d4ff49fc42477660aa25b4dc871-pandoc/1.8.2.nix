{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
      highlighting = false;
      executable = true;
      library = true;
      wrappers = true;
      tests = false;
      benchmarks = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pandoc";
          version = "1.8.2";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2006-2011 John MacFarlane";
        maintainer = "John MacFarlane <jgm@berkeley.edu>";
        author = "John MacFarlane <jgm@berkeley.edu>";
        homepage = "http://johnmacfarlane.net/pandoc";
        url = "";
        synopsis = "Conversion between markup formats";
        description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read markdown and (subsets of)\nreStructuredText, HTML, LaTeX and Textile, and it can write\nmarkdown, reStructuredText, HTML, LaTeX, ConTeXt, Docbook,\nOpenDocument, ODT, RTF, MediaWiki, Textile, groff man pages,\nplain text, Emacs Org-Mode, EPUB, and S5 and Slidy HTML\nslide shows.\n\nPandoc extends standard markdown syntax with footnotes,\nembedded LaTeX, definition lists, tables, and other\nfeatures. A compatibility mode is provided for those\nwho need a drop-in replacement for Markdown.pl.\n\nIn contrast to existing tools for converting markdown\nto HTML, which use regex substitutions, pandoc has\na modular design: it consists of a set of readers,\nwhich parse text in a given format and produce a native\nrepresentation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
        buildType = "Custom";
      };
      components = {
        pandoc = {
          depends  = ([
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.xhtml
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.zip-archive
            hsPkgs.utf8-string
            hsPkgs.old-time
            hsPkgs.HTTP
            hsPkgs.texmath
            hsPkgs.xml
            hsPkgs.random
            hsPkgs.extensible-exceptions
            hsPkgs.citeproc-hs
            hsPkgs.pandoc-types
            hsPkgs.json
            hsPkgs.dlist
            hsPkgs.tagsoup
            hsPkgs.base64-bytestring
          ] ++ (if compiler.isGhc
            then [ hsPkgs.base hsPkgs.syb ]
            else [
              hsPkgs.base
            ])) ++ pkgs.lib.optional _flags.highlighting hsPkgs.highlighting-kate;
        };
        exes = {
          pandoc = {
            depends  = ([
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.xhtml
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.zip-archive
              hsPkgs.utf8-string
              hsPkgs.old-time
              hsPkgs.HTTP
              hsPkgs.texmath
              hsPkgs.xml
              hsPkgs.random
              hsPkgs.extensible-exceptions
              hsPkgs.citeproc-hs
              hsPkgs.pandoc-types
              hsPkgs.json
              hsPkgs.dlist
              hsPkgs.tagsoup
              hsPkgs.base64-bytestring
            ] ++ (if compiler.isGhc
              then [ hsPkgs.base hsPkgs.syb ]
              else [
                hsPkgs.base
              ])) ++ pkgs.lib.optional _flags.highlighting hsPkgs.highlighting-kate;
          };
          markdown2pdf = {};
          test-pandoc = {
            depends  = pkgs.lib.optionals (!(!_flags.tests)) [
              hsPkgs.base
              hsPkgs.Diff
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.template-haskell
              hsPkgs.ansi-terminal
            ];
          };
        };
      };
    }
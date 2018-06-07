{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      embed_data_files = false;
      trypandoc = false;
      https = true;
      network-uri = true;
      old-locale = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pandoc";
          version = "1.15.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2006-2015 John MacFarlane";
        maintainer = "John MacFarlane <jgm@berkeley.edu>";
        author = "John MacFarlane <jgm@berkeley.edu>";
        homepage = "http://pandoc.org";
        url = "";
        synopsis = "Conversion between markup formats";
        description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read markdown and (subsets of) HTML,\nreStructuredText, LaTeX, DocBook, MediaWiki markup, TWiki\nmarkup, Haddock markup, OPML, Emacs Org-Mode, txt2tags,\nWord Docx, ODT, and Textile, and it can write\nMarkdown, reStructuredText, XHTML, HTML 5, LaTeX,\nConTeXt, DocBook, OPML, OpenDocument, ODT,\nWord docx, RTF, MediaWiki, DokuWiki, Textile, groff man\npages, plain text, Emacs Org-Mode, AsciiDoc, Haddock markup,\nEPUB (v2 and v3), FictionBook2, InDesign ICML, and several\nkinds of HTML/javascript slide shows (S5, Slidy, Slideous,\nDZSlides, reveal.js).\n\nPandoc extends standard markdown syntax with footnotes,\nembedded LaTeX, definition lists, tables, and other\nfeatures. A compatibility mode is provided for those\nwho need a drop-in replacement for Markdown.pl.\n\nIn contrast to existing tools for converting markdown\nto HTML, which use regex substitutions, pandoc has\na modular design: it consists of a set of readers,\nwhich parse text in a given format and produce a native\nrepresentation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
        buildType = "Custom";
      };
      components = {
        pandoc = {
          depends  = (([
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.array
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.zip-archive
            hsPkgs.HTTP
            hsPkgs.texmath
            hsPkgs.xml
            hsPkgs.random
            hsPkgs.extensible-exceptions
            hsPkgs.pandoc-types
            hsPkgs.aeson
            hsPkgs.tagsoup
            hsPkgs.base64-bytestring
            hsPkgs.zlib
            hsPkgs.highlighting-kate
            hsPkgs.data-default
            hsPkgs.temporary
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.yaml
            hsPkgs.scientific
            hsPkgs.vector
            hsPkgs.hslua
            hsPkgs.binary
            hsPkgs.SHA
            hsPkgs.haddock-library
            hsPkgs.old-time
            hsPkgs.deepseq-generics
            hsPkgs.JuicyPixels
            hsPkgs.filemanip
            hsPkgs.cmark
            hsPkgs.ghc-prim
          ] ++ (if _flags.old-locale
            then [
              hsPkgs.old-locale
              hsPkgs.time
            ]
            else [
              hsPkgs.time
            ])) ++ (if _flags.network-uri
            then [
              hsPkgs.network-uri
              hsPkgs.network
            ]
            else [
              hsPkgs.network
            ])) ++ pkgs.lib.optionals _flags.https [
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
          ];
        };
        exes = {
          pandoc = {
            depends  = [
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.extensible-exceptions
              hsPkgs.highlighting-kate
              hsPkgs.aeson
              hsPkgs.yaml
              hsPkgs.containers
              hsPkgs.HTTP
            ] ++ (if _flags.network-uri
              then [
                hsPkgs.network-uri
                hsPkgs.network
              ]
              else [ hsPkgs.network ]);
          };
          trypandoc = {
            depends  = pkgs.lib.optionals _flags.trypandoc [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.pandoc
              hsPkgs.highlighting-kate
              hsPkgs.text
              hsPkgs.wai-extra
              hsPkgs.wai
              hsPkgs.http-types
            ];
          };
        };
        tests = {
          test-pandoc = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.highlighting-kate
              hsPkgs.Diff
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.containers
              hsPkgs.ansi-terminal
              hsPkgs.executable-path
              hsPkgs.zip-archive
            ];
          };
        };
        benchmarks = {
          benchmark-pandoc = {
            depends  = [
              hsPkgs.pandoc
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.criterion
            ];
          };
        };
      };
    }
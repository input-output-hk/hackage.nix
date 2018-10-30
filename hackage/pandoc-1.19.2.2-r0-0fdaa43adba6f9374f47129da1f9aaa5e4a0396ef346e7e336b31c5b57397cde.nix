{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      embed_data_files = false;
      trypandoc = false;
      weigh-pandoc = false;
      https = true;
      network-uri = true;
      old-locale = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pandoc";
        version = "1.19.2.2";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2006-2017 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "http://pandoc.org";
      url = "";
      synopsis = "Conversion between markup formats";
      description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read several dialects of Markdown and\n(subsets of) HTML, reStructuredText, LaTeX, DocBook,\nMediaWiki markup, TWiki markup, Haddock markup, OPML,\nEmacs Org-Mode, txt2tags, Word Docx, ODT, and Textile, and\nit can write Markdown, reStructuredText, XHTML, HTML 5,\nLaTeX, ConTeXt, DocBook, OPML, TEI, OpenDocument, ODT,\nWord docx, RTF, MediaWiki, DokuWiki, ZimWiki, Textile,\ngroff man pages, plain text, Emacs Org-Mode, AsciiDoc,\nHaddock markup, EPUB (v2 and v3), FictionBook2, InDesign ICML,\nand several kinds of HTML/javascript slide shows (S5, Slidy,\nSlideous, DZSlides, reveal.js).\n\nIn contrast to most existing tools for converting Markdown\nto HTML, pandoc has a modular design: it consists of a set of\nreaders, which parse text in a given format and produce a\nnative representation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.array)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.zip-archive)
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
          (hsPkgs.skylighting)
          (hsPkgs.data-default)
          (hsPkgs.temporary)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.yaml)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.hslua)
          (hsPkgs.binary)
          (hsPkgs.SHA)
          (hsPkgs.haddock-library)
          (hsPkgs.old-time)
          (hsPkgs.deepseq)
          (hsPkgs.JuicyPixels)
          (hsPkgs.filemanip)
          (hsPkgs.cmark)
          (hsPkgs.doctemplates)
          (hsPkgs.ghc-prim)
        ] ++ (if flags.old-locale
          then [
            (hsPkgs.old-locale)
            (hsPkgs.time)
          ]
          else [
            (hsPkgs.time)
          ])) ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optionals (flags.https) [
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
        ];
      };
      exes = {
        "pandoc" = {
          depends  = ([
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.skylighting)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.containers)
            (hsPkgs.HTTP)
          ] ++ (if flags.network-uri
            then [
              (hsPkgs.network-uri)
              (hsPkgs.network)
            ]
            else [
              (hsPkgs.network)
            ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
        "trypandoc" = {
          depends  = pkgs.lib.optionals (flags.trypandoc) [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.pandoc)
            (hsPkgs.text)
            (hsPkgs.wai-extra)
            (hsPkgs.wai)
            (hsPkgs.http-types)
          ];
        };
        "weigh-pandoc" = {
          depends  = pkgs.lib.optionals (flags.weigh-pandoc) [
            (hsPkgs.pandoc)
            (hsPkgs.base)
            (hsPkgs.weigh)
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
            (hsPkgs.skylighting)
            (hsPkgs.Diff)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
            (hsPkgs.ansi-terminal)
            (hsPkgs.executable-path)
            (hsPkgs.zip-archive)
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
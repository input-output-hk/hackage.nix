{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      static = false;
      embed_data_files = false;
      trypandoc = false;
      weigh-pandoc = false;
      network-uri = true;
      old-locale = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc"; version = "2.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2006-2017 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "http://pandoc.org";
      url = "";
      synopsis = "Conversion between markup formats";
      description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read several dialects of Markdown and\n(subsets of) HTML, reStructuredText, LaTeX, DocBook,\nMediaWiki markup, TWiki markup, TikiWiki markup, Creole 1.0,\nHaddock markup, OPML, Emacs Org-Mode, Emacs Muse, txt2tags,\nVimwiki, Word Docx, ODT, and Textile, and it can write\nMarkdown, reStructuredText, XHTML, HTML 5, LaTeX, ConTeXt,\nDocBook, JATS, OPML, TEI, OpenDocument, ODT, Word docx,\nRTF, MediaWiki, DokuWiki, ZimWiki, Textile, groff man,\ngroff ms, plain text, Emacs Org-Mode, AsciiDoc,\nHaddock markup, EPUB (v2 and v3), FictionBook2, InDesign\nICML, Muse, and several kinds of HTML/JavaScript slide\nshows (S5, Slidy, Slideous, DZSlides, reveal.js).\n\nIn contrast to most existing tools for converting Markdown\nto HTML, pandoc has a modular design: it consists of a set of\nreaders, which parse text in a given format and produce a\nnative representation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."texmath" or (errorHandler.buildDepError "texmath"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."haddock-library" or (errorHandler.buildDepError "haddock-library"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."cmark-gfm" or (errorHandler.buildDepError "cmark-gfm"))
          (hsPkgs."doctemplates" or (errorHandler.buildDepError "doctemplates"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (if flags.old-locale
          then [
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ]
          else [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ])) ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ])) ++ (pkgs.lib).optional (flags.embed_data_files) (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"));
        buildable = true;
        };
      exes = {
        "pandoc" = {
          depends = [
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "trypandoc" = {
          depends = (pkgs.lib).optionals (flags.trypandoc) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            ];
          buildable = if flags.trypandoc then true else false;
          };
        "weigh-pandoc" = {
          depends = (pkgs.lib).optionals (flags.weigh-pandoc) [
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = if flags.weigh-pandoc then true else false;
          };
        };
      tests = {
        "test-pandoc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark-pandoc" = {
          depends = [
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }
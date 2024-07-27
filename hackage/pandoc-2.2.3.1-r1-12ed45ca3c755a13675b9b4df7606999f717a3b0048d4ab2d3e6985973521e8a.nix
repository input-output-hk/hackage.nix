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
    flags = { static = false; embed_data_files = false; trypandoc = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "pandoc"; version = "2.2.3.1"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2006-2018 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "https://pandoc.org";
      url = "";
      synopsis = "Conversion between markup formats";
      description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read several dialects of Markdown and\n(subsets of) HTML, reStructuredText, LaTeX, DocBook, JATS,\nMediaWiki markup, TWiki markup, TikiWiki markup, Creole 1.0,\nHaddock markup, OPML, Emacs Org-Mode, Emacs Muse, txt2tags,\nVimwiki, Word Docx, ODT, EPUB, FictionBook2, and Textile,\nand it can write Markdown, reStructuredText, XHTML, HTML 5,\nLaTeX, ConTeXt, DocBook, JATS, OPML, TEI, OpenDocument,\nODT, Word docx, RTF, MediaWiki, DokuWiki, ZimWiki, Textile,\ngroff man, groff ms, plain text, Emacs Org-Mode, AsciiDoc,\nHaddock markup, EPUB (v2 and v3), FictionBook2, InDesign\nICML, Muse, LaTeX beamer slides, PowerPoint, and several\nkinds of HTML/JavaScript slide shows (S5, Slidy, Slideous,\nDZSlides, reveal.js).\n\nIn contrast to most existing tools for converting Markdown\nto HTML, pandoc has a modular design: it consists of a set of\nreaders, which parse text in a given format and produce a\nnative representation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
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
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
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
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          (hsPkgs."hslua-module-text" or (errorHandler.buildDepError "hslua-module-text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."haddock-library" or (errorHandler.buildDepError "haddock-library"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."cmark-gfm" or (errorHandler.buildDepError "cmark-gfm"))
          (hsPkgs."doctemplates" or (errorHandler.buildDepError "doctemplates"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8.0") [
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
          (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optional (flags.embed_data_files) (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"));
        buildable = true;
      };
      exes = {
        "pandoc" = {
          depends = ([
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"));
          buildable = true;
        };
        "trypandoc" = {
          depends = (pkgs.lib.optionals (flags.trypandoc) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"));
          buildable = if flags.trypandoc then true else false;
        };
      };
      tests = {
        "test-pandoc" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
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
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"));
          buildable = true;
        };
      };
      benchmarks = {
        "weigh-pandoc" = {
          depends = ([
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"));
          buildable = true;
        };
        "benchmark-pandoc" = {
          depends = ([
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"));
          buildable = true;
        };
      };
    };
  }
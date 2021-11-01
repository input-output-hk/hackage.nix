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
    flags = { embed_data_files = false; trypandoc = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "pandoc"; version = "2.16"; };
      license = "GPL-2.0-or-later";
      copyright = "(c) 2006-2021 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "https://pandoc.org";
      url = "";
      synopsis = "Conversion between markup formats";
      description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read several dialects of Markdown and\n(subsets of) HTML, reStructuredText, LaTeX, DocBook, JATS,\nMediaWiki markup, DokuWiki markup, TWiki markup,\nTikiWiki markup, Jira markup, Creole 1.0, Haddock markup,\nOPML, Emacs Org-Mode, Emacs Muse, txt2tags, ipynb (Jupyter\nnotebooks), Vimwiki, Word Docx, ODT, EPUB, FictionBook2,\nroff man, Textile, BibTeX, BibLaTeX, CSL JSON,\n, and CSV, and it can write Markdown,\nreStructuredText, XHTML, HTML 5, LaTeX, ConTeXt, DocBook,\nJATS, OPML, TEI, OpenDocument, ODT, Word docx,\nPowerPoint pptx, RTF, MediaWiki, DokuWiki, XWiki,\nZimWiki, Textile, Jira, roff man, roff ms, plain text,\nEmacs Org-Mode, AsciiDoc, Haddock markup,\nEPUB (v2 and v3), ipynb, FictionBook2,\nInDesign ICML, Muse, CSL JSON, LaTeX beamer slides,\nand several kinds of HTML/JavaScript slide shows\n(S5, Slidy, Slideous, DZSlides, reveal.js).\n\nIn contrast to most existing tools for converting Markdown\nto HTML, pandoc has a modular design: it consists of a set of\nreaders, which parse text in a given format and produce a\nnative representation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."citeproc" or (errorHandler.buildDepError "citeproc"))
          (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
          (hsPkgs."commonmark-extensions" or (errorHandler.buildDepError "commonmark-extensions"))
          (hsPkgs."commonmark-pandoc" or (errorHandler.buildDepError "commonmark-pandoc"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."doclayout" or (errorHandler.buildDepError "doclayout"))
          (hsPkgs."doctemplates" or (errorHandler.buildDepError "doctemplates"))
          (hsPkgs."emojis" or (errorHandler.buildDepError "emojis"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haddock-library" or (errorHandler.buildDepError "haddock-library"))
          (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
          (hsPkgs."hslua-module-path" or (errorHandler.buildDepError "hslua-module-path"))
          (hsPkgs."hslua-module-system" or (errorHandler.buildDepError "hslua-module-system"))
          (hsPkgs."hslua-module-text" or (errorHandler.buildDepError "hslua-module-text"))
          (hsPkgs."hslua-module-version" or (errorHandler.buildDepError "hslua-module-version"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."ipynb" or (errorHandler.buildDepError "ipynb"))
          (hsPkgs."jira-wiki-markup" or (errorHandler.buildDepError "jira-wiki-markup"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
          (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."texmath" or (errorHandler.buildDepError "texmath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-conversions" or (errorHandler.buildDepError "text-conversions"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unicode-collation" or (errorHandler.buildDepError "unicode-collation"))
          (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.6") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))) ++ (pkgs.lib).optionals (system.isWindows && system.isI386) [
          (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
          (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
          ]) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      exes = {
        "pandoc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.6") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"));
          buildable = true;
          };
        "trypandoc" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.6") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))) ++ (pkgs.lib).optionals (flags.trypandoc) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            ];
          buildable = if flags.trypandoc then true else false;
          };
        };
      tests = {
        "test-pandoc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctemplates" or (errorHandler.buildDepError "doctemplates"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-lua" or (errorHandler.buildDepError "tasty-lua"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.6") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"));
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark-pandoc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.6") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"));
          buildable = true;
          };
        };
      };
    }
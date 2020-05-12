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
    flags = { executable = true; library = true; blaze_html_0_5 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc"; version = "1.9.4.4"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2006-2012 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "http://johnmacfarlane.net/pandoc";
      url = "";
      synopsis = "Conversion between markup formats";
      description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read markdown and (subsets of) HTML,\nreStructuredText, LaTeX, DocBook, and Textile, and it can write\nmarkdown, reStructuredText, HTML, LaTeX, ConTeXt, Docbook,\nOpenDocument, ODT, Word docx, RTF, MediaWiki, Textile,\ngroff man pages, plain text, Emacs Org-Mode, AsciiDoc, EPUB,\nand S5, Slidy and Slideous HTML slide shows.\n\nPandoc extends standard markdown syntax with footnotes,\nembedded LaTeX, definition lists, tables, and other\nfeatures. A compatibility mode is provided for those\nwho need a drop-in replacement for Markdown.pl.\n\nIn contrast to existing tools for converting markdown\nto HTML, which use regex substitutions, pandoc has\na modular design: it consists of a set of readers,\nwhich parse text in a given format and produce a native\nrepresentation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."texmath" or (errorHandler.buildDepError "texmath"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."citeproc-hs" or (errorHandler.buildDepError "citeproc-hs"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ] ++ (if flags.blaze_html_0_5
          then [
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            ]
          else [
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            ])) ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = if flags.library then true else false;
        };
      exes = {
        "pandoc" = {
          depends = ([
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."texmath" or (errorHandler.buildDepError "texmath"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."citeproc-hs" or (errorHandler.buildDepError "citeproc-hs"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ] ++ (if flags.blaze_html_0_5
            then [
              (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
              (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
              ]
            else [
              (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
              ])) ++ (if compiler.isGhc && (compiler.version).ge "6.10"
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = if flags.executable then true else false;
          };
        "make-pandoc-man-pages" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }
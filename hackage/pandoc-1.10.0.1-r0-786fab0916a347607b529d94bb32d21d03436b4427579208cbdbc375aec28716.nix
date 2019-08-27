let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { blaze_html_0_5 = true; embed_data_files = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc"; version = "1.10.0.1"; };
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
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."texmath" or (buildDepError "texmath"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."citeproc-hs" or (buildDepError "citeproc-hs"))
          (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          ] ++ (if flags.blaze_html_0_5
          then [
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            ]
          else [
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            ])) ++ (pkgs.lib).optionals (flags.embed_data_files) [
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      exes = {
        "pandoc" = {
          depends = [
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."citeproc-hs" or (buildDepError "citeproc-hs"))
            ];
          };
        "make-pandoc-man-pages" = {
          depends = [
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      tests = {
        "test-pandoc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            ];
          };
        };
      benchmarks = {
        "benchmark-pandoc" = {
          depends = [
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."json" or (buildDepError "json"))
            ];
          };
        };
      };
    }
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
    flags = {
      threaded = true;
      highlighting = false;
      executable = true;
      library = true;
      wrappers = true;
      tests = false;
      benchmarks = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "pandoc"; version = "1.8.1"; };
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
      "library" = {
        depends = ([
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."texmath" or (buildDepError "texmath"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."citeproc-hs" or (buildDepError "citeproc-hs"))
          (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            ])) ++ (pkgs.lib).optional (flags.highlighting) (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"));
        };
      exes = {
        "pandoc" = {
          depends = ([
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."texmath" or (buildDepError "texmath"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."citeproc-hs" or (buildDepError "citeproc-hs"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."syb" or (buildDepError "syb"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              ])) ++ (pkgs.lib).optional (flags.highlighting) (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"));
          };
        "markdown2pdf" = {};
        "test-pandoc" = {
          depends = (pkgs.lib).optionals (!(!flags.tests)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            ];
          };
        };
      };
    }
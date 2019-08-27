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
      embed_data_files = false;
      trypandoc = false;
      https = true;
      network-uri = true;
      old-locale = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc"; version = "1.15.0.4"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2006-2015 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "http://pandoc.org";
      url = "";
      synopsis = "Conversion between markup formats";
      description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read markdown and (subsets of) HTML,\nreStructuredText, LaTeX, DocBook, MediaWiki markup, TWiki\nmarkup, Haddock markup, OPML, Emacs Org-Mode, txt2tags and\nTextile, and it can write markdown, reStructuredText, XHTML,\nHTML 5, LaTeX, ConTeXt, DocBook, OPML, OpenDocument, ODT,\nWord docx, RTF, MediaWiki, DokuWiki, Textile, groff man\npages, plain text, Emacs Org-Mode, AsciiDoc, Haddock markup,\nEPUB (v2 and v3), FictionBook2, InDesign ICML, and several\nkinds of HTML/javascript slide shows (S5, Slidy, Slideous,\nDZSlides, reveal.js).\n\nPandoc extends standard markdown syntax with footnotes,\nembedded LaTeX, definition lists, tables, and other\nfeatures. A compatibility mode is provided for those\nwho need a drop-in replacement for Markdown.pl.\n\nIn contrast to existing tools for converting markdown\nto HTML, which use regex substitutions, pandoc has\na modular design: it consists of a set of readers,\nwhich parse text in a given format and produce a native\nrepresentation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."texmath" or (buildDepError "texmath"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."hslua" or (buildDepError "hslua"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."SHA" or (buildDepError "SHA"))
          (hsPkgs."haddock-library" or (buildDepError "haddock-library"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."deepseq-generics" or (buildDepError "deepseq-generics"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."cmark" or (buildDepError "cmark"))
          ] ++ (if flags.old-locale
          then [
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            ]
          else [
            (hsPkgs."time" or (buildDepError "time"))
            ])) ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (buildDepError "network"))
            ])) ++ (pkgs.lib).optionals (flags.https) [
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          ];
        };
      exes = {
        "pandoc" = {
          depends = [
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              (hsPkgs."network" or (buildDepError "network"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "trypandoc" = {
          depends = (pkgs.lib).optionals (flags.trypandoc) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
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
            (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."executable-path" or (buildDepError "executable-path"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
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
            ];
          };
        };
      };
    }
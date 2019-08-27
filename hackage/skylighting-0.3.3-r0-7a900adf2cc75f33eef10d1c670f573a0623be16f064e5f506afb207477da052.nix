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
    flags = { bootstrap = false; executable = false; system-pcre = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "skylighting"; version = "0.3.3"; };
      license = "GPL-2.0-only";
      copyright = "(C) 2016 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/skylighting";
      url = "";
      synopsis = "syntax highlighting library";
      description = "Skylighting is a syntax highlighting library with\nsupport for over one hundred languages.  It derives\nits tokenizers from XML syntax definitions used\nby KDE's KSyntaxHighlighting framework, so any\nsyntax supported by that framework can be added.\nAn optional command-line program is provided.\nSkylighting is intended to be the successor to\nhighlighting-kate.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ] ++ (if flags.system-pcre
          then [ (hsPkgs."regex-pcre" or (buildDepError "regex-pcre")) ]
          else [
            (hsPkgs."regex-pcre-builtin" or (buildDepError "regex-pcre-builtin"))
            ]);
        };
      exes = {
        "skylighting-extract" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ] ++ (if flags.system-pcre
            then [ (hsPkgs."regex-pcre" or (buildDepError "regex-pcre")) ]
            else [
              (hsPkgs."regex-pcre-builtin" or (buildDepError "regex-pcre-builtin"))
              ]);
          };
        "skylighting" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."skylighting" or (buildDepError "skylighting"))
            ];
          };
        };
      tests = {
        "test-skylighting" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."skylighting" or (buildDepError "skylighting"))
            ];
          };
        };
      benchmarks = {
        "benchmark-skylighting" = {
          depends = [
            (hsPkgs."skylighting" or (buildDepError "skylighting"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }
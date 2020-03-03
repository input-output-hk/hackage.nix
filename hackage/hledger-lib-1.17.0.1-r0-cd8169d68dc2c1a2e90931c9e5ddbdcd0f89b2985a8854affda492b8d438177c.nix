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
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hledger-lib"; version = "1.17.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "Core data types, parsers and functionality for the hledger accounting tools";
      description = "This is a reusable library containing hledger's core functionality.\n\nhledger is a cross-platform program for tracking money, time, or\nany other commodity, using double-entry accounting and a simple,\neditable file format. It is inspired by and largely compatible\nwith ledger(1).  hledger provides command-line, terminal and web\ninterfaces, and aims to be a reliable, practical tool for daily\nuse.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Decimal" or (buildDepError "Decimal"))
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-compat-batteries" or (buildDepError "base-compat-batteries"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."call-stack" or (buildDepError "call-stack"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."cassava-megaparsec" or (buildDepError "cassava-megaparsec"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."tabular" or (buildDepError "tabular"))
          (hsPkgs."tasty" or (buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."timeit" or (buildDepError "timeit"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."uglymemo" or (buildDepError "uglymemo"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."Decimal" or (buildDepError "Decimal"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat-batteries" or (buildDepError "base-compat-batteries"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."call-stack" or (buildDepError "call-stack"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."cassava-megaparsec" or (buildDepError "cassava-megaparsec"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashtables" or (buildDepError "hashtables"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."tabular" or (buildDepError "tabular"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."timeit" or (buildDepError "timeit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."uglymemo" or (buildDepError "uglymemo"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = false;
          };
        "unittest" = {
          depends = [
            (hsPkgs."Decimal" or (buildDepError "Decimal"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat-batteries" or (buildDepError "base-compat-batteries"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."call-stack" or (buildDepError "call-stack"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."cassava-megaparsec" or (buildDepError "cassava-megaparsec"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashtables" or (buildDepError "hashtables"))
            (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."tabular" or (buildDepError "tabular"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."timeit" or (buildDepError "timeit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."uglymemo" or (buildDepError "uglymemo"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }
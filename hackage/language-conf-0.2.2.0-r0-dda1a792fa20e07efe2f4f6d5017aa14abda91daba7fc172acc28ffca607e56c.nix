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
    flags = { conffmt = false; fromconf = false; toconf = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "language-conf"; version = "0.2.2.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2016 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/beijaflor-io/haskell-language-conf#readme";
      url = "";
      synopsis = "Conf parsers and pretty-printers for the Haskell programming language.";
      description = "@language-conf@ contains @.conf@ (e.g. nginx configuration) parsers and pretty-printers for the Haskell programming language.\n\"Data.Conf\" exports all the API surface in the package.\n\"ConfFmt\" is a @.conf@ file formatter that serves as an example; it's built as @conffmt@ by the cabal configuration. You can see its' source-code <https://github.com/beijaflor-io/language-hcl/src/ConfFmt.hs here>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          ];
        };
      exes = {
        "conffmt" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."language-conf" or (buildDepError "language-conf"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          };
        "fromconf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."language-conf" or (buildDepError "language-conf"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          };
        "toconf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."language-conf" or (buildDepError "language-conf"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."language-conf" or (buildDepError "language-conf"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."hspec-megaparsec" or (buildDepError "hspec-megaparsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }
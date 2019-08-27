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
      specVersion = "1.18";
      identifier = { name = "morley"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2018 camlCase, 2019 Tocqueville Group";
      maintainer = "john@camlcase.io";
      author = "camlCase, Serokell";
      homepage = "https://gitlab.com/camlcase-dev/morley";
      url = "";
      synopsis = "Developer tools for the Michelson Language";
      description = "A library to make writing smart contracts in Michelson — the smart contract\nlanguage of the Tezos blockchain — pleasant and effective.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-options" or (buildDepError "aeson-options"))
          (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."base58-bytestring" or (buildDepError "base58-bytestring"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."fmt" or (buildDepError "fmt"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."morley-prelude" or (buildDepError "morley-prelude"))
          (hsPkgs."named" or (buildDepError "named"))
          (hsPkgs."natural-numbers" or (buildDepError "natural-numbers"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."timerep" or (buildDepError "timerep"))
          (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.autoexporter or (pkgs.buildPackages.autoexporter or (buildToolDepError "autoexporter")))
          ];
        };
      exes = {
        "morley" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."fmt" or (buildDepError "fmt"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."morley" or (buildDepError "morley"))
            (hsPkgs."morley-prelude" or (buildDepError "morley-prelude"))
            (hsPkgs."named" or (buildDepError "named"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty-simple" or (buildDepError "pretty-simple"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "morley-test" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fmt" or (buildDepError "fmt"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-golden-aeson" or (buildDepError "hspec-golden-aeson"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."morley" or (buildDepError "morley"))
            (hsPkgs."morley-prelude" or (buildDepError "morley-prelude"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-arbitrary-adt" or (buildDepError "quickcheck-arbitrary-adt"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."universum" or (buildDepError "universum"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            ];
          };
        };
      };
    }
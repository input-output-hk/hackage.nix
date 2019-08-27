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
      specVersion = "2.2";
      identifier = { name = "morley"; version = "0.3.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "2018 camlCase, 2019 Tocqueville Group";
      maintainer = "john.c.burnham@gmail.com";
      author = "camlCase, Serokell, Tocqueville Group";
      homepage = "https://gitlab.com/morley-framework/morley";
      url = "";
      synopsis = "Developer tools for the Michelson Language";
      description = "A library to make writing smart contracts in Michelson — the smart contract language of the Tezos blockchain — pleasant and effective.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-options" or (buildDepError "aeson-options"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."base58-bytestring" or (buildDepError "base58-bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fmt" or (buildDepError "fmt"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."hex-text" or (buildDepError "hex-text"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."morley-prelude" or (buildDepError "morley-prelude"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."named" or (buildDepError "named"))
          (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
          (hsPkgs."quickcheck-arbitrary-adt" or (buildDepError "quickcheck-arbitrary-adt"))
          (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."tasty" or (buildDepError "tasty"))
          (hsPkgs."tasty-ant-xml" or (buildDepError "tasty-ant-xml"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."timerep" or (buildDepError "timerep"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
          ];
        };
      exes = {
        "contract-discover" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fmt" or (buildDepError "fmt"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."morley" or (buildDepError "morley"))
            (hsPkgs."morley-prelude" or (buildDepError "morley-prelude"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "morley" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."fmt" or (buildDepError "fmt"))
            (hsPkgs."morley" or (buildDepError "morley"))
            (hsPkgs."morley-prelude" or (buildDepError "morley-prelude"))
            (hsPkgs."named" or (buildDepError "named"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty-simple" or (buildDepError "pretty-simple"))
            ];
          };
        };
      tests = {
        "morley-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fmt" or (buildDepError "fmt"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."generic-arbitrary" or (buildDepError "generic-arbitrary"))
            (hsPkgs."hex-text" or (buildDepError "hex-text"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."morley" or (buildDepError "morley"))
            (hsPkgs."morley-prelude" or (buildDepError "morley-prelude"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."qm-interpolated-string" or (buildDepError "qm-interpolated-string"))
            (hsPkgs."quickcheck-arbitrary-adt" or (buildDepError "quickcheck-arbitrary-adt"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover or (buildToolDepError "tasty-discover")))
            ];
          };
        };
      };
    }
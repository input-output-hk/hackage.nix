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
      specVersion = "1.10";
      identifier = { name = "safe-money"; version = "0.8.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2016-2019";
      maintainer = "renλren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/safe-money";
      url = "";
      synopsis = "Type-safe and lossless encoding and manipulation of money, fiat\ncurrencies, crypto currencies and precious metals.";
      description = "The Haskell @safe-money@ library offers type-safe and lossless encoding and\noperations for monetary values in all world currencies, including fiat\ncurrencies, precious metals and crypto-currencies.\n\nUseful instances for the many types defined by @safe-money@ can be found\nin these other libraries:\n\n* [safe-money-aeson](https://hackage.haskell.org/package/safe-money-aeson):\n@FromJSON@ and @ToJSON@ instances (from the [aeson](https://hackage.haskell.org/package/aeson) library).\n\n* [safe-money-cereal](https://hackage.haskell.org/package/safe-money-cereal):\n@Serialize@ instances (from the [cereal](https://hackage.haskell.org/package/cereal) library).\n\n* [safe-money-serialise](https://hackage.haskell.org/package/safe-money-serialise):\n@Serialise@ instances (from the [serialise](https://hackage.haskell.org/package/serialise) library).\n\n* [safe-money-store](https://hackage.haskell.org/package/safe-money-store):\n@Store@ instances (from the [store](https://hackage.haskell.org/package/store) library).\n\n* [safe-money-xmlbf](https://hackage.haskell.org/package/safe-money-xmlbf):\n@FromXml@ and @ToXml@ instances (from the [xmlbf](https://hackage.haskell.org/package/xmlbf) library).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."safe-money" or (buildDepError "safe-money"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            ];
          buildable = true;
          };
        };
      };
    }
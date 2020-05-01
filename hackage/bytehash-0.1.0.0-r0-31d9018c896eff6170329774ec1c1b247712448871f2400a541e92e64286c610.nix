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
      identifier = { name = "bytehash"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/bytehash";
      url = "";
      synopsis = "Universal hashing of bytes";
      description = "Taken together, universal hash functions and a good source of entropy\nprovide a foundation for hash maps guarantee O(1) lookups even if an\nadversary chooses the keys. This library implements such a hash map.\nThe implementation of lookup is tuned for performance. The functions\nfor building hash maps are not since they are intended to be called\ninfrequently.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."byte-order" or (buildDepError "byte-order"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."primitive-unlifted" or (buildDepError "primitive-unlifted"))
          (hsPkgs."byteslice" or (buildDepError "byteslice"))
          (hsPkgs."entropy" or (buildDepError "entropy"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytehash" or (buildDepError "bytehash"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."primitive-checked" or (buildDepError "primitive-checked"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytehash" or (buildDepError "bytehash"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."primitive-unlifted" or (buildDepError "primitive-unlifted"))
            (hsPkgs."bytesmith" or (buildDepError "bytesmith"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      identifier = { name = "bytesmith"; version = "0.3.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/bytesmith";
      url = "";
      synopsis = "Nonresumable byte parser";
      description = "Parse bytes as fast as possible. This is a nonresumable parser\nthat aggresively uses `UnboxedSums` to avoid performing any\nallocations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."byteslice" or (buildDepError "byteslice"))
          (hsPkgs."contiguous" or (buildDepError "contiguous"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."text-short" or (buildDepError "text-short"))
          (hsPkgs."run-st" or (buildDepError "run-st"))
          (hsPkgs."wide-word" or (buildDepError "wide-word"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytesmith" or (buildDepError "bytesmith"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."byte-order" or (buildDepError "byte-order"))
            (hsPkgs."text-short" or (buildDepError "text-short"))
            (hsPkgs."wide-word" or (buildDepError "wide-word"))
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
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."bytesmith" or (buildDepError "bytesmith"))
            ];
          buildable = true;
          };
        };
      };
    }
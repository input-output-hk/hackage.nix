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
    flags = { checked = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "small-bytearray-builder"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/small-bytearray-builder";
      url = "";
      synopsis = "Serialize to a small byte arrays";
      description = "This is similar to the builder facilities provided by\n`Data.ByteString.Builder`. It is intended to be used in\nsituations where the following apply:\n\n* An individual entity will be serialized as a small\nnumber of bytes (less than 512).\n\n* A large number (more than 32) of entities will be serialized\none after another without anything between them.\n\nUnlike builders from the `bytestring` package, these builders\ndo not track their state when they run out of space. A builder\nthat runs out of space simply aborts and is rerun at the beginning\nof the next chunk. This strategy for building is suitable for most\nCSVs and several line protocols (carbon, InfluxDB, etc.).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."byteslice" or (buildDepError "byteslice"))
          (hsPkgs."primitive-offset" or (buildDepError "primitive-offset"))
          (hsPkgs."run-st" or (buildDepError "run-st"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text-short" or (buildDepError "text-short"))
          (hsPkgs."natural-arithmetic" or (buildDepError "natural-arithmetic"))
          ] ++ (if flags.checked
          then [
            (hsPkgs."primitive-checked" or (buildDepError "primitive-checked"))
            ]
          else [ (hsPkgs."primitive" or (buildDepError "primitive")) ]);
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."natural-arithmetic" or (buildDepError "natural-arithmetic"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."small-bytearray-builder" or (buildDepError "small-bytearray-builder"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."natural-arithmetic" or (buildDepError "natural-arithmetic"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."small-bytearray-builder" or (buildDepError "small-bytearray-builder"))
            (hsPkgs."text-short" or (buildDepError "text-short"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            ];
          buildable = true;
          };
        };
      };
    }
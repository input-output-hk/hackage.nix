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
      identifier = { name = "metar"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@sıɹɹoɯʇ>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@sıɹɹoɯʇ>";
      homepage = "https://github.com/tonymorris/metar";
      url = "";
      synopsis = "Australian METAR";
      description = "Obtain Australian METAR from Bureau of Meteorology (BOM).\n\nIf that fails, get the METAR from NOAA.\n\n<<https://i.imgur.com/VGTogB8.gif>>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."tagsoup-selection" or (buildDepError "tagsoup-selection"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."deriving-compat" or (buildDepError "deriving-compat"))
          ];
        };
      exes = {
        "metar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."metar" or (buildDepError "metar"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."checkers" or (buildDepError "checkers"))
            (hsPkgs."metar" or (buildDepError "metar"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      };
    }
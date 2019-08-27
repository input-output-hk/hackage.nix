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
      identifier = { name = "metar-http"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@sıɹɹoɯʇ>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@sıɹɹoɯʇ>";
      homepage = "https://gitlab.com/tonymorris/metar-http";
      url = "";
      synopsis = "HTTP for METAR";
      description = "A trivial HTTP program for getting METAR";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."metar" or (buildDepError "metar"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."wai" or (buildDepError "wai"))
          ];
        };
      exes = {
        "metar-http" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."metar-http" or (buildDepError "metar-http"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."checkers" or (buildDepError "checkers"))
            (hsPkgs."metar-http" or (buildDepError "metar-http"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      };
    }
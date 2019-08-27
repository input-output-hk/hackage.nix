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
      identifier = { name = "hmatrix-vector-sized"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/hmatrix-vector-sized#readme";
      url = "";
      synopsis = "Conversions between hmatrix and vector-sized types";
      description = "Conversions between statically sized types in hmatrix and vector-sized.\n\nSee README on Github <https://github.com/mstksg/hmatrix-vector-sized#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-sized" or (buildDepError "vector-sized"))
          ];
        };
      tests = {
        "hmatrix-vector-sized-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."hmatrix-vector-sized" or (buildDepError "hmatrix-vector-sized"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-sized" or (buildDepError "vector-sized"))
            ];
          };
        };
      };
    }
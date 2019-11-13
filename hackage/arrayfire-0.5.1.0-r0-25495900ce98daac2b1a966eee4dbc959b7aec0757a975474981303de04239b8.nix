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
    flags = { disable-default-paths = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "arrayfire"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "David Johnson (c) 2018-2020";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "https://github.com/arrayfire/arrayfire-haskell";
      url = "";
      synopsis = "Haskell bindings to the ArrayFire general-purpose GPU library";
      description = "High-level Haskell bindings to the ArrayFire General-purpose GPU library\n\n<<https://user-images.githubusercontent.com/875324/59819388-9ff83f00-92f5-11e9-9ac0-51eef200c716.png>>\n";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = [ (pkgs."af" or (sysDepError "af")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "main" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."arrayfire" or (buildDepError "arrayfire"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "gen" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."arrayfire" or (buildDepError "arrayfire"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (buildDepError "quickcheck-classes"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."arrayfire" or (buildDepError "arrayfire"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          buildable = false;
          };
        };
      };
    }
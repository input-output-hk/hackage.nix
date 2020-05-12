{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { disable-default-paths = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "arrayfire"; version = "0.6.0.0"; };
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (errorHandler.buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = [ (pkgs."af" or (errorHandler.sysDepError "af")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."arrayfire" or (errorHandler.buildDepError "arrayfire"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."arrayfire" or (errorHandler.buildDepError "arrayfire"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."arrayfire" or (errorHandler.buildDepError "arrayfire"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = false;
          };
        };
      };
    }
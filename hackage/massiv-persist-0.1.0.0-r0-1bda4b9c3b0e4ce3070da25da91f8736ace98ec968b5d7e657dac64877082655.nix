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
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "massiv-persist"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Alexey Kuleshevich";
      maintainer = "alexey@kuleshevi.ch";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/massiv-compat";
      url = "";
      synopsis = "Compatibility of 'massiv' with 'persist'";
      description = "Orphan 'Persist' class instances from <https://hackage.haskell.org/package/persist persist> package that allow serialization of arrays defined in <https://hackage.haskell.org/package/massiv massiv> package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          (hsPkgs."persist" or (errorHandler.buildDepError "persist"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."massiv-persist" or (errorHandler.buildDepError "massiv-persist"))
            (hsPkgs."massiv-test" or (errorHandler.buildDepError "massiv-test"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            (hsPkgs."persist" or (errorHandler.buildDepError "persist"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      specVersion = "1.12";
      identifier = { name = "hafar"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Joosep Jääger";
      maintainer = "Joosep Jääger";
      author = "Joosep Jääger";
      homepage = "https://github.com/Soupstraw/hafar#readme";
      url = "";
      synopsis = "Affine arithmetic library for Haskell";
      description = "Hafar is an affine arithmetic library for Haskell. It is an efficient way to work with ranges of values or imprecise values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."intervals" or (errorHandler.buildDepError "intervals"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "hafar-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hafar" or (errorHandler.buildDepError "hafar"))
            (hsPkgs."intervals" or (errorHandler.buildDepError "intervals"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }
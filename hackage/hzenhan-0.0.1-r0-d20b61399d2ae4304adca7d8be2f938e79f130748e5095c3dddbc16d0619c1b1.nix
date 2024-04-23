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
      specVersion = "1.10";
      identifier = { name = "hzenhan"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 karky7 Calimakvonia";
      maintainer = "cantimerny.g@gmail.com";
      author = "karky7";
      homepage = "https://github.com/karky7/hzenhan#readme";
      url = "";
      synopsis = "Zenhan library for Haskell";
      description = "Converter between Full-width Japanese and Half-width Japanese";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."hzenhan" or (errorHandler.buildDepError "hzenhan"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }
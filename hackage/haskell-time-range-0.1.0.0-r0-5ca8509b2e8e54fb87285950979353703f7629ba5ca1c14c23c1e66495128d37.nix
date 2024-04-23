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
      identifier = { name = "haskell-time-range"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Sean Chalmers";
      maintainer = "sclhiannan@gmail.com";
      author = "Sean Chalmers";
      homepage = "https://github.com/mankyKitty/haskell-time-range#readme";
      url = "";
      synopsis = "Some useful wrappers and functions for building time ranges";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
    };
  }
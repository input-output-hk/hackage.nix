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
      identifier = { name = "haskell-eigen-util"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2016 Dilawar Singh";
      maintainer = "dilawars@ncbs.res.in";
      author = "Dilawar Singh";
      homepage = "https://github.com/dilawar/haskell-eigen-util#README.md";
      url = "";
      synopsis = "Some utility functions for haskell-eigen library";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."eigen" or (errorHandler.buildDepError "eigen"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "haskell-eigen-util-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-eigen-util" or (errorHandler.buildDepError "haskell-eigen-util"))
            (hsPkgs."eigen" or (errorHandler.buildDepError "eigen"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }
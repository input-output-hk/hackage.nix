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
      identifier = { name = "dynloader"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Taqenoqo";
      maintainer = "ttaakkee@gmail.com";
      author = "Taqenoqo";
      homepage = "https://github.com/taqenoqo/dynloader#readme";
      url = "";
      synopsis = "Dynamically runtime loading packages";
      description = "This is a simple library for dynamically loading other packages at runtime. Please see the README on GitHub at <https://github.com/taqenoqo/dynloader#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
        ];
        buildable = true;
      };
      tests = {
        "dynloader-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dynloader" or (errorHandler.buildDepError "dynloader"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }
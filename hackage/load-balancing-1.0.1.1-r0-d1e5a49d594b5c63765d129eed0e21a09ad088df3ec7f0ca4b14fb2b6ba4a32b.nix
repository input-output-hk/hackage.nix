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
      identifier = { name = "load-balancing"; version = "1.0.1.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rowens@sumall.com";
      author = "Rick Owens";
      homepage = "https://github.com/SumAll/haskell-load-balancing";
      url = "";
      synopsis = "Client-side load balancing utilities.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."PSQueue" or (errorHandler.buildDepError "PSQueue"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }
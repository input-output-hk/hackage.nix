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
      specVersion = "1.8";
      identifier = { name = "faker"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Alexey Gaziev <alex.gaziev@gmail.com>";
      author = "Alexey Gaziev";
      homepage = "https://github.com/gazay/faker";
      url = "";
      synopsis = "Pure Haskell library for generating fake data";
      description = "No description yet\n\n> 0.0.0.1\n>  - Init version";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gimlh" or (errorHandler.buildDepError "gimlh"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
    };
  }
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
      identifier = { name = "gimlh"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "alex.gaziev@gmail.com";
      author = "Alexey Gaziev";
      homepage = "https://github.com/gazay/gimlh";
      url = "";
      synopsis = "Haskell parser for GIML";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
    };
  }
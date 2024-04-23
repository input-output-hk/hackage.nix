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
      identifier = { name = "arrow-improve"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "© Alistair Lynn, 2014";
      maintainer = "arplynn@gmail.com";
      author = "Alistair Lynn";
      homepage = "https://github.com/prophile/arrow-improve/";
      url = "";
      synopsis = "Improved arrows.";
      description = "Optimisations to arrows.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."pointed" or (errorHandler.buildDepError "pointed"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
        ];
        buildable = true;
      };
    };
  }
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
      identifier = { name = "means"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Winterland";
      maintainer = "winterland1989@gmail.com";
      author = "winterland1989";
      homepage = "";
      url = "";
      synopsis = "calculate varieties of mean/average using semigroup.";
      description = "calculate varieties of mean/average using semigroup.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
        buildable = true;
        };
      };
    }
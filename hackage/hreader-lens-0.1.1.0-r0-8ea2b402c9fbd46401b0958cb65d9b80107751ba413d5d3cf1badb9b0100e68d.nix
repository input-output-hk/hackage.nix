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
      identifier = { name = "hreader-lens"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "denis.redozubov@gmail.com";
      author = "Denis Redozubov";
      homepage = "http://github.com/dredozubov/hreader-lens";
      url = "";
      synopsis = "Optics for hreader package";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hreader" or (errorHandler.buildDepError "hreader"))
          (hsPkgs."hset" or (errorHandler.buildDepError "hset"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
        buildable = true;
        };
      };
    }
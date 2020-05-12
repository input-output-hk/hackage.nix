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
      identifier = { name = "chalk"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "joomy@cattheory.com";
      author = "Joomy Korkut";
      homepage = "http://github.com/joom/chalk";
      url = "";
      synopsis = "Terminal string styling.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }
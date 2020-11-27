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
      identifier = { name = "data-as"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "incertia@incertia.net";
      author = "Will Song";
      homepage = "https://github.com/incertia/data-as";
      url = "";
      synopsis = "Simple extensible sum";
      description = "Simple extensible sum";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
        buildable = true;
        };
      };
    }
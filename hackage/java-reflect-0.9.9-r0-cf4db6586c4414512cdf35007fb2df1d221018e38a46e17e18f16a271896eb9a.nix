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
      identifier = { name = "java-reflect"; version = "0.9.9"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Tools for reflecting on Java classes.";
      description = "Tools for reflecting on Java classes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."java-bridge" or (errorHandler.buildDepError "java-bridge"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hx" or (errorHandler.buildDepError "hx"))
          ];
        buildable = true;
        };
      };
    }
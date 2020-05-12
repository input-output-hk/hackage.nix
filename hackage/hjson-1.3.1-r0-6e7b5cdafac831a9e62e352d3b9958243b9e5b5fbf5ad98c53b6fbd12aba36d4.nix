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
      specVersion = "1.6";
      identifier = { name = "hjson"; version = "1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voker57@gmail.com";
      author = "Voker57";
      homepage = "";
      url = "";
      synopsis = "JSON parsing library";
      description = "JSON parsing library with simple and sane API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }
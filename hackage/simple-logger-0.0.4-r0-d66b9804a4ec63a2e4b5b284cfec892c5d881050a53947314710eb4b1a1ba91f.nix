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
      identifier = { name = "simple-logger"; version = "0.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "";
      homepage = "https://github.com/agrafix/simple-logger#readme";
      url = "";
      synopsis = "A very simple but efficient logging framework";
      description = "A very simple but efficient logging framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }
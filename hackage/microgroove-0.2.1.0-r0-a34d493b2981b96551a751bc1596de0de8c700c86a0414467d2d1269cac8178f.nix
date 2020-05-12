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
      identifier = { name = "microgroove"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "2018 Dai";
      maintainer = "dailectic@gmail.com";
      author = "Dai";
      homepage = "https://github.com/daig/microgroove#readme";
      url = "";
      synopsis = "Array-backed extensible records";
      description = "Array-backed extensible records, providing fast access and mutation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }
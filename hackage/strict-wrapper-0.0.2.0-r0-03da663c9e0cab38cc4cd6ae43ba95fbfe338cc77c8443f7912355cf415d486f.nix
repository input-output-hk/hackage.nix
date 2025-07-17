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
      specVersion = "2.4";
      identifier = { name = "strict-wrapper"; version = "0.0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Ellis";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Lightweight strict types";
      description = "Lightweight, zero-cost, strict versions of basic data types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."strict-wrapper" or (errorHandler.buildDepError "strict-wrapper"))
          ];
          buildable = true;
        };
      };
    };
  }
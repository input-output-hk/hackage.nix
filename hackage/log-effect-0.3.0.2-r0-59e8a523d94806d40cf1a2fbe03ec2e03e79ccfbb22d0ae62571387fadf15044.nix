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
      identifier = { name = "log-effect"; version = "0.3.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "tob@butter.sh";
      author = "Tobias Florek";
      homepage = "https://github.com/ibotty/log-effect";
      url = "";
      synopsis = "An extensible log effect using extensible-effects";
      description = "Any help (especially documentation) is very welcome,";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }
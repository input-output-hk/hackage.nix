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
      identifier = { name = "friendly-time"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@pbrisbin.com";
      author = "Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/friendly-time";
      url = "";
      synopsis = "Print time information in friendly ways";
      description = "Print time information in friendly ways";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ];
        buildable = true;
        };
      };
    }
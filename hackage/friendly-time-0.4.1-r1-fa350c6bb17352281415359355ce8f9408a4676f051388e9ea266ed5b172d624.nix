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
      identifier = { name = "friendly-time"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Print time information in friendly ways";
      description = "Print time information in friendly ways";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."friendly-time" or (errorHandler.buildDepError "friendly-time"))
            ];
          buildable = true;
          };
        };
      };
    }
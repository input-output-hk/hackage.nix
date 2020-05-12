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
      identifier = { name = "rematch-text"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tcrayford@googlemail.com";
      author = "Tom Crayford";
      homepage = "";
      url = "";
      synopsis = "`rematch` matchers for Data.Text";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rematch" or (errorHandler.buildDepError "rematch"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }
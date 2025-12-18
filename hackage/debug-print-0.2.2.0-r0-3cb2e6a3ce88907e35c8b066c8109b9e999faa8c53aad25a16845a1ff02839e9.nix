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
      specVersion = "2.0";
      identifier = { name = "debug-print"; version = "0.2.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Freckle Education";
      author = "";
      homepage = "https://github.com/freckle/debug-print#readme";
      url = "";
      synopsis = "A structured alternative to Show";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."debug-print".components.sublibs.internal or (errorHandler.buildDepError "debug-print:internal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      sublibs = {
        "internal" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      tests = {
        "readme" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."debug-print" or (errorHandler.buildDepError "debug-print"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."aeson-qq" or (errorHandler.buildDepError "aeson-qq"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."debug-print" or (errorHandler.buildDepError "debug-print"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
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
      specVersion = "1.12";
      identifier = { name = "jmonkey"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 peus";
      maintainer = "opyapeus@gmail.com";
      author = "peus";
      homepage = "https://github.com/opyapeus/jmonkey#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/opyapeus/jmonkey#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
        ];
        buildable = true;
      };
      exes = {
        "jmonkey-example-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
            (hsPkgs."jmonkey" or (errorHandler.buildDepError "jmonkey"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = true;
        };
      };
      tests = {
        "jmonkey-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
            (hsPkgs."jmonkey" or (errorHandler.buildDepError "jmonkey"))
          ];
          buildable = true;
        };
      };
    };
  }
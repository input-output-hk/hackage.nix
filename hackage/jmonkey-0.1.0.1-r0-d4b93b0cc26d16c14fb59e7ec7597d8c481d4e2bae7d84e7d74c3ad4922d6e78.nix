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
      identifier = { name = "jmonkey"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2018 peus";
      maintainer = "opyapeus@gmail.com";
      author = "peus";
      homepage = "https://github.com/opyapeus/jmonkey#readme";
      url = "";
      synopsis = "Jmonkey is very restricted but handy EDSL for JavaScript.";
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
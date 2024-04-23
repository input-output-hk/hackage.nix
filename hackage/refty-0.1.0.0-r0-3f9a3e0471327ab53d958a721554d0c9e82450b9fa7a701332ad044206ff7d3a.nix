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
      identifier = { name = "refty"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2017 Shinya Takahashi";
      maintainer = "Shinya Takahashi <s.takahashi313@gmail.com>";
      author = "Shinya Takahashi";
      homepage = "https://github.com/oreshinya/refty";
      url = "";
      synopsis = "Formatted JSON generator for API server inspired by normalizr.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "refty-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."refty" or (errorHandler.buildDepError "refty"))
          ];
          buildable = true;
        };
      };
    };
  }
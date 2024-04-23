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
      identifier = { name = "bunz"; version = "0.0.7"; };
      license = "MIT";
      copyright = "(c) 2017 Sendy Halim";
      maintainer = "Sendy Halim <sendyhalim93@gmail.com>";
      author = "Sendy Halim <sendyhalim93@gmail.com>";
      homepage = "https://github.com/sendyhalim/bunz";
      url = "";
      synopsis = "CLI tool to beautify JSON string.";
      description = "CLI tool to beautify JSON string.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "bunz" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bunz" or (errorHandler.buildDepError "bunz"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = true;
        };
      };
      tests = {
        "bunz-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bunz" or (errorHandler.buildDepError "bunz"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }
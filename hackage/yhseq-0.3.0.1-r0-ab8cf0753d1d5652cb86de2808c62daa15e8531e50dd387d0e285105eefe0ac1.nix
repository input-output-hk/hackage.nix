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
      identifier = { name = "yhseq"; version = "0.3.0.1"; };
      license = "Apache-2.0";
      copyright = "(C) Hexirp 2019-2020";
      maintainer = "https://github.com/Hexirp/yhseq";
      author = "Hexirp";
      homepage = "https://github.com/Hexirp/yhseq#readme";
      url = "";
      synopsis = "Calculation of YH sequence system";
      description = "Please see the README on GitHub at <https://github.com/Hexirp/yhseq#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "yhseq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."yhseq" or (errorHandler.buildDepError "yhseq"))
          ];
          buildable = true;
        };
      };
      tests = {
        "yhseq-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."yhseq" or (errorHandler.buildDepError "yhseq"))
          ];
          buildable = true;
        };
      };
    };
  }
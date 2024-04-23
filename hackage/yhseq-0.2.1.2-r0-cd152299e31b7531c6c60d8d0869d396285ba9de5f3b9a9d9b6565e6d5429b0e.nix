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
      identifier = { name = "yhseq"; version = "0.2.1.2"; };
      license = "Apache-2.0";
      copyright = "(C) Hexirp 2019";
      maintainer = "https://github.com/Hexirp/yhseq";
      author = "Hexirp";
      homepage = "https://github.com/Hexirp/yhseq#readme";
      url = "";
      synopsis = "Calculation of Y-sequence Hexirp edition";
      description = "Please see the README on GitHub at <https://github.com/Hexirp/yhseq#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "yhseq-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."yhseq" or (errorHandler.buildDepError "yhseq"))
          ];
          buildable = true;
        };
      };
    };
  }
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
      specVersion = "3.0";
      identifier = { name = "dataframe-hasktorch"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mschavinda@gmail.com";
      author = "Michael Chavinda";
      homepage = "";
      url = "";
      synopsis = "Converts between dataframes and hasktorch tensors";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."dataframe" or (errorHandler.buildDepError "dataframe"))
          (hsPkgs."hasktorch" or (errorHandler.buildDepError "hasktorch"))
        ];
        buildable = true;
      };
      tests = {
        "dataframe-hasktorch-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dataframe-hasktorch" or (errorHandler.buildDepError "dataframe-hasktorch"))
          ];
          buildable = true;
        };
      };
    };
  }
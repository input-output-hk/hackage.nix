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
      specVersion = "2.2";
      identifier = { name = "ihaskell-dataframe"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Michael Chavinda";
      maintainer = "mschavinda@gmail.com";
      author = "Michael Chavinda";
      homepage = "https://github.com/githubuser/ihaskell-dataframe#readme";
      url = "";
      synopsis = "";
      description = "Utilties for working with dataframes in IHaskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dataframe" or (errorHandler.buildDepError "dataframe"))
          (hsPkgs."dataframe-hasktorch" or (errorHandler.buildDepError "dataframe-hasktorch"))
          (hsPkgs."hasktorch" or (errorHandler.buildDepError "hasktorch"))
          (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
      exes = {
        "ihaskell-dataframe-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dataframe" or (errorHandler.buildDepError "dataframe"))
            (hsPkgs."dataframe-hasktorch" or (errorHandler.buildDepError "dataframe-hasktorch"))
            (hsPkgs."hasktorch" or (errorHandler.buildDepError "hasktorch"))
            (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
      tests = {
        "ihaskell-dataframe-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dataframe" or (errorHandler.buildDepError "dataframe"))
            (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
            (hsPkgs."ihaskell-dataframe" or (errorHandler.buildDepError "ihaskell-dataframe"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
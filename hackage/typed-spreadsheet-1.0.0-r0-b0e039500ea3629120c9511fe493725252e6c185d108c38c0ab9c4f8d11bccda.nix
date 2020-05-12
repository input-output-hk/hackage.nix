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
      specVersion = "1.8.0.2";
      identifier = { name = "typed-spreadsheet"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Typed and composable spreadsheets";
      description = "This library provides a typed and composable API for building spreadsheets.\nThis differs from traditional spreadsheets in a few important ways:\n\n* you specify the relationship between inputs and outputs at compile time,\nnot runtime, so that the relationship can be type-checked\n\n* inputs of different types have different controls; for example, a `Bool`\ninput creates a checkbox and a `Double` input creates a spin button\n\n* you can only output a single value; you simulate multiple outputs by\nemitting a tuple of values\n\nSee the \"Typed.Spreadsheet\" module for full examples with code and pictures";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "typed-spreadsheet-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-spreadsheet" or (errorHandler.buildDepError "typed-spreadsheet"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      identifier = { name = "uniform-error"; version = "0.1.3.1"; };
      license = "GPL-2.0-only";
      copyright = "2021 Andrew U. Frank";
      maintainer = "Andrew U. Frank <uniform@gerastree.at>";
      author = "Andrew Frank";
      homepage = "";
      url = "";
      synopsis = "Handling errors in the uniform framework";
      description = "A minimal package to handle errors and exception\nin a simple but flexible way. Includes functions to adapt the prefered method of calling IO with error handling (ErrIO) to the\napproaches encountered in other packages when writing applications.\n\n0.1.3 added stack build lts 19.16 for ghc 9.0.2\n\nPlease see the README on GitHub at <https://github.com/andrewufrank/uniform-error/readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uniform-strings" or (errorHandler.buildDepError "uniform-strings"))
          ];
        buildable = true;
        };
      tests = {
        "error-test" = {
          depends = [
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uniform-error" or (errorHandler.buildDepError "uniform-error"))
            (hsPkgs."uniform-strings" or (errorHandler.buildDepError "uniform-strings"))
            ];
          buildable = true;
          };
        };
      };
    }
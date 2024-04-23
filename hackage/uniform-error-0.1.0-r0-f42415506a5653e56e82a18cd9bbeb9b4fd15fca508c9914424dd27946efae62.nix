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
      identifier = { name = "uniform-error"; version = "0.1.0"; };
      license = "GPL-2.0-only";
      copyright = "2021 Andrew U. Frank";
      maintainer = "Andrew U. Frank <uniform@gerastree.at>";
      author = "Andrew Frank";
      homepage = "";
      url = "";
      synopsis = "Handling errors in the uniform framework";
      description = "A minimal package to handle errors and exception\nin a simple but flexible way. Includes functions to adapt the prefered method of calling IO with error handling (ErrIO) to the\napproaches encountered in other packages when writing applications.\n\nPlease see the README on GitHub at <https://github.com/andrewufrank/uniform-error/readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."uniform-strings" or (errorHandler.buildDepError "uniform-strings"))
        ];
        buildable = true;
      };
    };
  }
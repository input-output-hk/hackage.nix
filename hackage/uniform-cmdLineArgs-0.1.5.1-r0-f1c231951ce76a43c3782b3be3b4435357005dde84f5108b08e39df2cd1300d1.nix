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
      identifier = { name = "uniform-cmdLineArgs"; version = "0.1.5.1"; };
      license = "LicenseRef-GPL";
      copyright = "2021 Andrew U. Frank";
      maintainer = "Andrew U. Frank <andrewufrank@gmail.com>";
      author = "Andrew Frank";
      homepage = "https://github.com/andrewufrank/u4blog.git#readme";
      url = "";
      synopsis = "a convenient handling of command line arguments";
      description = "deals with the command line arguments and fills with decent defaults";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."uniformBase" or (errorHandler.buildDepError "uniformBase"))
        ];
        buildable = true;
      };
    };
  }
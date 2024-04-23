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
      identifier = { name = "lambda-devs"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alios@alios.org";
      author = "Markus Barenhoff";
      homepage = "http://github.com/alios/lambda-devs";
      url = "";
      synopsis = "a Paralell-DEVS implementaion based on distributed-process";
      description = "The Discrete Event System Sepcification (DEVS) formalism\ndefines discrete event simulation models in a hierachical,\nmodular manner.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."dimensional" or (errorHandler.buildDepError "dimensional"))
        ];
        buildable = true;
      };
      exes = {
        "lambda-devs-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."lambda-devs" or (errorHandler.buildDepError "lambda-devs"))
            (hsPkgs."numtype" or (errorHandler.buildDepError "numtype"))
            (hsPkgs."dimensional" or (errorHandler.buildDepError "dimensional"))
          ];
          buildable = true;
        };
      };
    };
  }
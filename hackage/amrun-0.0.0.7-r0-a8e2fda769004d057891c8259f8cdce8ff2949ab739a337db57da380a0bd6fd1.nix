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
      specVersion = "1.2";
      identifier = { name = "amrun"; version = "0.0.0.7"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "janis.voigtlaender@uni-due.de";
      author = "Daniel Seidel and Janis Voigtlaender";
      homepage = "";
      url = "";
      synopsis = "Interpreter for AM";
      description = "The package contains an interpreter for the AM-Language that is introduced in the basic programming course \\\"Algorithmisches Denken und imperative Programmierung\\\" (WS 2011/12 and later) at the University of Bonn.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "amrun" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }
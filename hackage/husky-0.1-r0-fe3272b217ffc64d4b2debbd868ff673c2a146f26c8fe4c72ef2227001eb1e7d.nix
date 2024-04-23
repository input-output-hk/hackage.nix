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
      identifier = { name = "husky"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008 Markus Dittrich";
      maintainer = "Markus Dittrich <markus.lists@gmail.com>";
      author = "Markus Dittrich <markus.lists@gmail.com>";
      homepage = "http://github.com/markusle/husky/tree/master";
      url = "";
      synopsis = "A simple command line calculator.";
      description = "husky is a command line calculator with a small memory\nfootprint. It can be used in a fashion similar to the\ninteractive shells of python, octave, or ruby.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "husky" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }
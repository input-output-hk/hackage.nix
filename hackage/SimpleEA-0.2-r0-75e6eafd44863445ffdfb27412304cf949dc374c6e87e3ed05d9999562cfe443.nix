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
      specVersion = "1.6";
      identifier = { name = "SimpleEA"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ehamberg@gmail.com";
      author = "Erlend Hamberg";
      homepage = "http://www.github.com/ehamberg/simpleea/";
      url = "";
      synopsis = "Simple evolutionary algorithm framework.";
      description = "Simple framework for running an evolutionary algorithm by\nproviding selection, recombination, and mutation operators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
        ];
        buildable = true;
      };
    };
  }
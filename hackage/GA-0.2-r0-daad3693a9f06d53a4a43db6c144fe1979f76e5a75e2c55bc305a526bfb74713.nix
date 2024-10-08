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
      identifier = { name = "GA"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Kenneth Hoste";
      maintainer = "kenneth.hoste@gmail.com";
      author = "Kenneth Hoste";
      homepage = "http://boegel.kejo.be";
      url = "";
      synopsis = "Genetic algorithm library";
      description = "This package provides a framework for working with genetic\nalgorithms. A genetic algorithm is an evolutionary technique,\ninspired by biological evolution, to evolve entities that perform\nas good as possible in terms of a predefined criterion (the scoring\nfunction). Note: lower scores are assumed to indicate better entities.\nThe GA module provides a type class for defining entities and the\nfunctions that are required by the genetic algorithm.\nCheckpointing in between generations is available, as is automatic\nrestoring from the last available checkpoint.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }
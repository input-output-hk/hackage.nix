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
      identifier = { name = "perceptron"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Stefan Holdermans";
      maintainer = "stefan@vectorfabrics.com";
      author = "Stefan Holdermans";
      homepage = "";
      url = "";
      synopsis = "The perceptron learning algorithm.";
      description = "This package provides a straightforward implementation of the perceptron\nlearning algorithm for supervised binary linear classification.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }
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
      specVersion = "2.4";
      identifier = { name = "intcode"; version = "0.2.0.0"; };
      license = "ISC";
      copyright = "2019 Eric Mertens";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "https://github.com/glguy/intcode";
      url = "";
      synopsis = "Advent of Code 2019 intcode interpreter";
      description = "Implementation of the Intcode virtual machine as defined by\nAdvent of Code <https://adventofcode.com/2019>.\n\nThis implementation provides an efficient, pure implementation\nof the interpreter and exposes multiple levels of abstraction\nto make it easy to use in a variety of situations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      };
    }
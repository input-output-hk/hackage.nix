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
      identifier = { name = "simple-actors"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "";
      url = "";
      synopsis = "A simple implementation of the actor model of concurrency";
      description = "Simple concurrency primitives based on the Actor Model.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }
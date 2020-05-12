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
      identifier = { name = "instance-control"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@caesar.elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/lazac/instance-control";
      url = "";
      synopsis = "Controls how the compiler searches for instances using type families.";
      description = "GHC has no capability to perform graph searches on instance definition. Because of that,\ntransitive rules for type classes cannot be defined. This package solves the issue with\ntype functions performing a search on the graph where nodes are types and edges are\nrules from a given rule database. After constructing the type-level representation of the\nwanted path, the system constructs the needed functions from the value-level representation\nof the database.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }
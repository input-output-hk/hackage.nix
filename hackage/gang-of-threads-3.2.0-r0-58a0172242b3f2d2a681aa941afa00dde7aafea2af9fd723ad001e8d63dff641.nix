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
      specVersion = "1.8";
      identifier = { name = "gang-of-threads"; version = "3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bastian Holst <bho@informatik.uni-kiel.de>";
      author = "Bastian Holst <bho@informatik.uni-kiel.de>";
      homepage = "";
      url = "";
      synopsis = "Non-deterministic parallelism with bags";
      description = "Package implementing a bag-of-tasks approach to parallelism. This is an\napproach to non-deterministic parallelism, where non-deterministic means\nthat the order of multiple values from the same set depends on the scheduling.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }
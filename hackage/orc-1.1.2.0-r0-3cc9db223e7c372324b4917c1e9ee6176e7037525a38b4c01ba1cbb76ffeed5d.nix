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
      specVersion = "1.2.0";
      identifier = { name = "orc"; version = "1.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2010, Galois, Inc.";
      maintainer = "John Launchbury, Trevor Elliott";
      author = "John Launchbury, Trevor Elliott";
      homepage = "";
      url = "";
      synopsis = "Orchestration-style co-ordination EDSL";
      description = "Provides an EDSL with Orc primitives.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monadIO" or (errorHandler.buildDepError "monadIO"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      exes = {
        "orc" = {
          depends = [
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }
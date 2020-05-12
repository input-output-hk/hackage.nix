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
      identifier = { name = "cash"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Brown";
      author = "Chris Brown, Hans-Wolfgang Loidl, Jost Berthold, Kevin Hammond";
      homepage = "http://www.cs.st-andrews.ac.uk/~hwloidl/SCIEnce/SymGrid-Par/CASH/";
      url = "";
      synopsis = "the Computer Algebra SHell";
      description = "A Computer Algebra Shell for Haskell. CASH connects via SCSCP and OpenMATH to Computer Algebra systems with SCSCP (such as GAP). CASH also exposes an OpenMath and SCSCP marshalling library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }
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
      identifier = { name = "TableAlgebra"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeroen Weijers <jeroen.weijers@uni-tuebingen.de>";
      author = "Jeroen Weijers <jeroen.weijers@uni-tuebingen.de> Tom Schreiber <tom.schreiber@uni-tuebingen.de>";
      homepage = "";
      url = "";
      synopsis = "Ferry Table Algebra";
      description = "The Ferry 2.0 Table Algebra library\n\nThe table algebra [2] is an intermediate language used by Ferry 2.0 [3] and DSH [4].\nIt forms the input for the pathfinder [1] optimiser that can translate it into SQL.\nThe library exposes a monadic interface to construct algebraic plans, it\nautomatically performs common sub-tree elimination so that the resulting plan\nis as small as possible and the optimiser can do it's work better.\nXML rendering is present and needed for interfacing with DSH-Pathfinder, and\nfor debugging plans with the standalone Pathfinder.\n\n\n1. <http://www-db.informatik.uni-tuebingen.de/research/pathfinder>\n\n2. <http://dbworld.informatik.uni-tuebingen.de/projects/pathfinder/wiki/Logical_Algebra>\n\n3. <http://www-db.informatik.uni-tuebingen.de/research/ferry>\n\n4. <http://www-db.informatik.uni-tuebingen.de/files/publications/ferryhaskell.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }
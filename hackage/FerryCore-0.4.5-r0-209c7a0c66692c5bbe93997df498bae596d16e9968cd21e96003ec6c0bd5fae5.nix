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
      identifier = { name = "FerryCore"; version = "0.4.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeroen Weijers <jeroen.weijers@uni-tuebingen.de>";
      author = "Jeroen Weijers <jeroen.weijers@uni-tuebingen.de> Tom Schreiber <tom.schreiber@uni-tuebingen.de>";
      homepage = "";
      url = "";
      synopsis = "Ferry Core Components";
      description = "The Ferry 2.0 Core\nThis package contains the core components of the Ferry compiler [1]. It lacks a parser\nfor the ferry language and the normalisation ferry front, and the conversion of ferry\nfront language to the ferry core language.\n\nIt exposes the compiler parts that transform (un)typed ferry core into table algebra [2].\nWhen provided an untyped ferrycore AST this ast must have the shape of a normalised\nferry program. When a typed ast is used as input it is required to be typed correctly as well.\nThe ferry compiler uses this package providing it untyped ferrycore. DSH [3] uses this\npackage providing a typed AST.\n\n1. <http://www-db.informatik.uni-tuebingen.de/research/ferry>\n\n2. <http://dbworld.informatik.uni-tuebingen.de/projects/pathfinder/wiki/Logical_Algebra>\n\n3. <http://www-db.informatik.uni-tuebingen.de/files/publications/ferryhaskell.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."TableAlgebra" or (errorHandler.buildDepError "TableAlgebra"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }
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
    flags = { th = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "syntactic"; version = "3.6.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2015, Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/syntactic";
      url = "";
      synopsis = "Generic representation and manipulation of abstract syntax";
      description = "The library provides a generic representation of type-indexed abstract syntax trees\n(or indexed data types in general). It also permits the definition of open syntax\ntrees based on the technique in Data Types à la Carte [1].\n\n(Note that the difference between version 2.x and 3.0 is not that big. The bump to\n3.0 was done because the modules changed namespace.)\n\nFor more information, see\n\\\"A Generic Abstract Syntax Model for Embedded Languages\\\"\n(ICFP 2012):\n\n* Paper:\n<http://www.cse.chalmers.se/~emax/documents/axelsson2012generic.pdf>\n\n* Slides:\n<http://www.cse.chalmers.se/~emax/documents/axelsson2012generic-slides.pdf>\n\nExample EDSLs can be found in the @examples@ folder.\n\n\\[1\\] W. Swierstra. Data Types à la Carte.\n/Journal of Functional Programming/, 18(4):423-436, 2008,\n<http://dx.doi.org/10.1017/S0956796808006758>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-hash" or (errorHandler.buildDepError "data-hash"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."tree-view" or (errorHandler.buildDepError "tree-view"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))) ++ (pkgs.lib).optional (flags.th) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"));
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "syntactic-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
            ];
          buildable = true;
          };
        };
      };
    }
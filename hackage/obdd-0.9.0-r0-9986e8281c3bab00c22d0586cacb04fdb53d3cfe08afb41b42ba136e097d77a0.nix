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
      specVersion = "3.0";
      identifier = { name = "obdd"; version = "0.9.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "https://github.com/jwaldmann/haskell-obdd";
      url = "";
      synopsis = "Ordered Reduced Binary Decision Diagrams";
      description = "Construct, combine and query OBDDs;\nan efficient representation for formulas in propositional logic.\n.\nThis is mostly educational.\nThe BDDs do not share nodes (there is no persistent BDD base) and this might introduce inefficiencies.\n.\nAn important (for me, in teaching) feature is\nthat I can immediately draw the BDD to an X11 window (via graphviz).\nFor example, to show the effect of different variable orderings,\ntry this in ghci (type 'q' to close the drawing windows).\n.\n> import Prelude hiding (not,(&&),(||),and,or,any,all)\n> import OBDD\n> let f [] = false; f (x:y:zs) = x && y || f zs\n> display $ f $ map variable [1,2,3,4,5,6]\n> display $ f $ map variable [1,4,2,5,3,6]\n.\n'OBDD' implements 'Ersatz.Boolean' which re-defines\nBoolean operations from the Prelude. The recommended way of using this\nis shown in the previous example.\n.\nIf you want better performance, use a library with a persistent BDD base,\ne.g., <http://vlsi.colorado.edu/%7Efabio/CUDD/ CUDD>\n<https://hackage.haskell.org/package/cudd Haskell bindings>,\nsee <https://gitlab.imn.htwk-leipzig.de/waldmann/min-comp-sort this example>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
          (hsPkgs."ersatz" or (errorHandler.buildDepError "ersatz"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "obdd-placement" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."obdd" or (errorHandler.buildDepError "obdd"))
            ];
          buildable = true;
          };
        "obdd-domino" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."obdd" or (errorHandler.buildDepError "obdd"))
            ];
          buildable = true;
          };
        "obdd-cubism" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."obdd" or (errorHandler.buildDepError "obdd"))
            ];
          buildable = true;
          };
        "obdd-queens" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."obdd" or (errorHandler.buildDepError "obdd"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "obdd-queens2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."obdd" or (errorHandler.buildDepError "obdd"))
            ];
          buildable = true;
          };
        "obdd-weight" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."obdd" or (errorHandler.buildDepError "obdd"))
            ];
          buildable = true;
          };
        "obdd-sort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."obdd" or (errorHandler.buildDepError "obdd"))
            ];
          buildable = true;
          };
        "obdd-mm0916" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."obdd" or (errorHandler.buildDepError "obdd"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }
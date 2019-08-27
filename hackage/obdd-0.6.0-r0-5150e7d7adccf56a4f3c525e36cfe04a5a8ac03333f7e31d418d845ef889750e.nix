let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "obdd"; version = "0.6.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "https://github.com/jwaldmann/haskell-obdd";
      url = "";
      synopsis = "Ordered Reduced Binary Decision Diagrams";
      description = "Construct, combine and query OBDDs;\nan efficient representation for formulas in propositional logic.\n\nThis is mostly educational.\nThe BDDs do not share nodes and this might introduce inefficiencies.\n\nAn important (for me, in teaching) feature is\nthat I can immediately draw the BDD to an X11 window (via graphviz).\nFor example, to show the effect of different variable orderings,\ntry this in ghci:\n\n> import qualified Prelude as P\n> import OBDD\n> let f [] = false; f (x:y:zs) = x && y || f zs\n> display P.\$ f P.\$ P.map variable [1,2,3,4,5,6]\n> display P.\$ f P.\$ P.map variable [1,4,2,5,3,6]\nIf you want better performance,\nuse <http://vlsi.colorado.edu/%7Efabio/CUDD/ CUDD>\n<https://hackage.haskell.org/package/cudd Haskell bindings>,\nsee <https://gitlab.imn.htwk-leipzig.de/waldmann/min-comp-sort this example>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."process" or (buildDepError "process"))
          ];
        };
      tests = {
        "obdd-placement" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."obdd" or (buildDepError "obdd"))
            ];
          };
        "obdd-queens" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."obdd" or (buildDepError "obdd"))
            ];
          };
        "obdd-queens2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."obdd" or (buildDepError "obdd"))
            ];
          };
        "obdd-weight" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."obdd" or (buildDepError "obdd"))
            ];
          };
        "obdd-sort" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."obdd" or (buildDepError "obdd"))
            ];
          };
        "obdd-mm0916" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."obdd" or (buildDepError "obdd"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          };
        };
      };
    }
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
    flags = { warnings = false; examples = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "LogicGrowsOnTrees-network";
        version = "1.0.0.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
      author = "Gregory Crosswhite";
      homepage = "";
      url = "";
      synopsis = "an adapter for LogicGrowsOnTrees that uses multiple processes running in a network";
      description = "This package provides a adapter for the LogicGrowsOnTrees package that uses\nmultiple processes running in a network for parallelism; see the module\ndocumentation for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."LogicGrowsOnTrees" or (buildDepError "LogicGrowsOnTrees"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cmdtheline" or (buildDepError "cmdtheline"))
          (hsPkgs."composition" or (buildDepError "composition"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."hslogger-template" or (buildDepError "hslogger-template"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "count-all-nqueens-solutions" = {
          depends = [
            (hsPkgs."LogicGrowsOnTrees-network" or (buildDepError "LogicGrowsOnTrees-network"))
            (hsPkgs."LogicGrowsOnTrees" or (buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdtheline" or (buildDepError "cmdtheline"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."LogicGrowsOnTrees-network" or (buildDepError "LogicGrowsOnTrees-network"))
            (hsPkgs."LogicGrowsOnTrees" or (buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."hslogger-template" or (buildDepError "hslogger-template"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }
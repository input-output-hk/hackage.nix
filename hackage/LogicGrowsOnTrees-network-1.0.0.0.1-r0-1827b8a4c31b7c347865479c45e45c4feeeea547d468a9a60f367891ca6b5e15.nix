{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."LogicGrowsOnTrees" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."cmdtheline" or ((hsPkgs.pkgs-errors).buildDepError "cmdtheline"))
          (hsPkgs."composition" or ((hsPkgs.pkgs-errors).buildDepError "composition"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."hslogger-template" or ((hsPkgs.pkgs-errors).buildDepError "hslogger-template"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "count-all-nqueens-solutions" = {
          depends = [
            (hsPkgs."LogicGrowsOnTrees-network" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees-network"))
            (hsPkgs."LogicGrowsOnTrees" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdtheline" or ((hsPkgs.pkgs-errors).buildDepError "cmdtheline"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."LogicGrowsOnTrees-network" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees-network"))
            (hsPkgs."LogicGrowsOnTrees" or ((hsPkgs.pkgs-errors).buildDepError "LogicGrowsOnTrees"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."hslogger-template" or ((hsPkgs.pkgs-errors).buildDepError "hslogger-template"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }
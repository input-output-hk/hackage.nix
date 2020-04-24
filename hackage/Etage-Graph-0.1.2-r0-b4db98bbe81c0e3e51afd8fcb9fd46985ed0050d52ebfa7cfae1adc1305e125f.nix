{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Etage-Graph"; version = "0.1.2"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2011 Mitar Milutinovic";
      maintainer = "mitar.haskell@tnode.com";
      author = "Mitar Milutinovic";
      homepage = "http://mitar.tnode.com";
      url = "";
      synopsis = "Data-flow based graph algorithms";
      description = "Data-flow based graph algorithms using the \"Control.Etage\" framework, showcasing its use for data-flow\ncomputations. It is meant to be used with the \"Data.Graph.Inductive\" package which provides graph structures\nthese algorithms take as an input.\n\nCurrently only the shortest paths computation is implemented (from all to all nodes).\n\nAlso a benchmarking @test@ program is provided, comparing the performance with algorithms found in the\n\"Data.Graph.Inductive\" package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Etage" or ((hsPkgs.pkgs-errors).buildDepError "Etage"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "etage-graph-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."Etage" or ((hsPkgs.pkgs-errors).buildDepError "Etage"))
            (hsPkgs."Etage-Graph" or ((hsPkgs.pkgs-errors).buildDepError "Etage-Graph"))
            ];
          buildable = true;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "maxsharing"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/maxsharing/";
      url = "";
      synopsis = "Maximal sharing of terms in the lambda calculus with letrec";
      description = "Parses a lambda-letrec term; transforms it into a first-order\nterm graph representation; minimises the graph by bisimulation\ncollapse; reads back a lambda-letrec term which has the same\nunfolding as the original term but is more (maximally) compact.\nIf executable \"dot\" from graphviz is available, the graphs are\ndisplayed (tested for Linux). The approach is described in an\nICFP-paper (http://dx.doi.org/10.1145/2628136.2628148) and an\nextended version thereof (http://arxiv.org/abs/1401.1460).";
      buildType = "Custom";
      };
    components = {
      exes = {
        "maxsharing" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."IndentParser" or ((hsPkgs.pkgs-errors).buildDepError "IndentParser"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."containers-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "containers-unicode-symbols"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."uuagc-cabal" or ((hsPkgs.pkgs-errors).buildDepError "uuagc-cabal"))
            (hsPkgs."uuagc" or ((hsPkgs.pkgs-errors).buildDepError "uuagc"))
            (hsPkgs."HaLeX" or ((hsPkgs.pkgs-errors).buildDepError "HaLeX"))
            (hsPkgs."boxes" or ((hsPkgs.pkgs-errors).buildDepError "boxes"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }
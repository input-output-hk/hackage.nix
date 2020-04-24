{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "maxsharing"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/maxsharing/";
      url = "";
      synopsis = "Maximal sharing of terms in the lambda calculus with letrec";
      description = "Parses a lambda-letrec term; transforms it into a first-order\nterm graph representation; minimises the graph; reads back a\nlambda-letrec term which has the same unfolding as the original\nterm, but exhibits maximal sharing.\nIf executable \"dot\" from graphviz is available, the graphs are\ndisplayed (tested for Linux).\nThe approach is described in a technical report:\nhttp://arxiv.org/abs/1401.1460";
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
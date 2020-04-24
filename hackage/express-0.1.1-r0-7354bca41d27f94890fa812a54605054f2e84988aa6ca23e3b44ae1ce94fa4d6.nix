{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "express"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/express#readme";
      url = "";
      synopsis = "Dynamically-typed expressions involving applications and variables.";
      description = "Express is a library for manipulating dynamically typed Haskell expressions.\nIt's like @ Data.Dynamic @ but with support for encoding applications and\nvariables.\n\nIt provides the @ Expr @ type and over a hundred functions for\nbuilding, evaluating, comparing, folding, canonicalizing and matching\n@ Expr @s.  See the README and Haddock documentation for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "core" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "canon" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "hole" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "match" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "map" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "fixtures" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "instances" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "express-instances" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "express-derive" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "ord" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "listable" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "name" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "name-derive" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "fold" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "show" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "utils" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "compare" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "pairs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "tiers" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "u-extrapolate" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        "u-speculate" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."express" or ((hsPkgs.pkgs-errors).buildDepError "express"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            ];
          buildable = true;
          };
        };
      };
    }
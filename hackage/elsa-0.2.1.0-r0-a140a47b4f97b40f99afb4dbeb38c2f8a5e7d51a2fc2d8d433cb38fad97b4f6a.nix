{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "elsa"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jhala@cs.ucsd.edu";
      author = "Ranjit Jhala";
      homepage = "http://github.com/ucsd-progsys/elsa";
      url = "";
      synopsis = "A tiny language for understanding the lambda-calculus";
      description = "elsa is a small proof checker for verifying sequences of\nreductions of lambda-calculus terms. The goal is to help\nstudents build up intuition about lambda-terms, alpha-equivalence,\nbeta-reduction, and in general, the notion of computation\nby substitution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."dequeue" or ((hsPkgs.pkgs-errors).buildDepError "dequeue"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          ];
        buildable = true;
        };
      exes = {
        "elsa" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."elsa" or ((hsPkgs.pkgs-errors).buildDepError "elsa"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."elsa" or ((hsPkgs.pkgs-errors).buildDepError "elsa"))
            ];
          buildable = true;
          };
        };
      };
    }
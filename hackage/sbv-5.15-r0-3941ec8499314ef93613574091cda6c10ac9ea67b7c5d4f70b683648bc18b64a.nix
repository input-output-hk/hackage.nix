{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "sbv"; version = "5.15"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2010-2017";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://leventerkok.github.com/sbv/";
      url = "";
      synopsis = "SMT Based Verification: Symbolic Haskell theorem prover using SMT solving.";
      description = "Express properties about Haskell programs and automatically prove them using SMT\n(Satisfiability Modulo Theories) solvers.\n\nFor details, please see: <http://leventerkok.github.com/sbv/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."crackNum" or ((hsPkgs.pkgs-errors).buildDepError "crackNum"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          ];
        buildable = true;
        };
      exes = {
        "SBVUnitTests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."sbv" or ((hsPkgs.pkgs-errors).buildDepError "sbv"))
            (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
            ];
          buildable = true;
          };
        };
      tests = {
        "SBVBasicTests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."sbv" or ((hsPkgs.pkgs-errors).buildDepError "sbv"))
            (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
            ];
          buildable = true;
          };
        };
      };
    }
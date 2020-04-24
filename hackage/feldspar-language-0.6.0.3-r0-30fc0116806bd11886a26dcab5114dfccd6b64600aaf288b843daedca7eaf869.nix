{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "feldspar-language"; version = "0.6.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Emil Axelsson, Gergely Dévai,\nAnders Persson, Josef Svenningsson\nCopyright (c) 2009-2011, ERICSSON AB";
      maintainer = "Emil Axelsson <emax@chalmers.se>\nAnders Persson <anders.cj.persson@gmail.com>";
      author = "Functional programming group at Chalmers University of Technology";
      homepage = "https://feldspar.github.com";
      url = "";
      synopsis = "A functional embedded language for DSP and parallelism";
      description = "Feldspar (Functional Embedded Language for DSP and PARallelism)\nis an embedded DSL for describing digital signal processing\nalgorithms. This package contains the language front-end and an\ninterpreter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-hash" or ((hsPkgs.pkgs-errors).buildDepError "data-hash"))
          (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."patch-combinators" or ((hsPkgs.pkgs-errors).buildDepError "patch-combinators"))
          (hsPkgs."syntactic" or ((hsPkgs.pkgs-errors).buildDepError "syntactic"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          (hsPkgs."type-level" or ((hsPkgs.pkgs-errors).buildDepError "type-level"))
          (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
          (hsPkgs."QuickAnnotate" or ((hsPkgs.pkgs-errors).buildDepError "QuickAnnotate"))
          ];
        buildable = true;
        };
      tests = {
        "range" = {
          depends = [
            (hsPkgs."feldspar-language" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-language"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        "semantics" = {
          depends = [
            (hsPkgs."feldspar-language" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-language"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        "decoration" = {
          depends = [
            (hsPkgs."feldspar-language" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-language"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-golden" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-golden"))
            ];
          buildable = true;
          };
        };
      };
    }
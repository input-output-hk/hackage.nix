{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "record-gl"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Original work copyright (C) 2013 Anthony Cowley, modifications copyright (C) 2015 Sebastián Méndez";
      maintainer = "sebas.chinoir@gmail.com";
      author = "Sebastián Méndez";
      homepage = "";
      url = "";
      synopsis = "Utilities for working with OpenGL's GLSL shading language and Nikita Volkov's \"Record\"s.";
      description = "Using Nikita Volkov's \"Record\" records\nto carry GLSL uniform parameters and vertex data enables\nlibrary code to reflect over the types of the data to\nfacilitate interaction between Haskell and GLSL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GLUtil" or ((hsPkgs.pkgs-errors).buildDepError "GLUtil"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."record" or ((hsPkgs.pkgs-errors).buildDepError "record"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."record" or ((hsPkgs.pkgs-errors).buildDepError "record"))
            (hsPkgs."record-gl" or ((hsPkgs.pkgs-errors).buildDepError "record-gl"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      };
    }
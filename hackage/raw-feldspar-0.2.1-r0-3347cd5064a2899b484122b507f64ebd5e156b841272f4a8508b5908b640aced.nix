{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "raw-feldspar"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Anders Persson, Anton Ekblad, Emil Axelsson,\nJosef Svenningsson, Koen Claessen, Markus Aronsson,\nMáté Karácsony\nCopyright (c) 2015 Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "https://github.com/Feldspar/raw-feldspar";
      url = "";
      synopsis = "Resource-Aware Feldspar";
      description = "An implementation of the Feldspar EDSL with focus on\nresource-awareness.\n\nExamples can be found in the @examples/@ directory. The\nfiles named \"TutN_...\" can be studied as a tutorial (to be\nread in ascending order).\n\nFor more information, see the README:\n<https://github.com/Feldspar/raw-feldspar/blob/master/README.md>\n\nTo see which GHC versions RAW-Feldspar can be built with,\nconsult the Travis status page:\n<https://travis-ci.org/Feldspar/raw-feldspar>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."data-hash" or ((hsPkgs.pkgs-errors).buildDepError "data-hash"))
          (hsPkgs."imperative-edsl" or ((hsPkgs.pkgs-errors).buildDepError "imperative-edsl"))
          (hsPkgs."language-c-quote" or ((hsPkgs.pkgs-errors).buildDepError "language-c-quote"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."operational-alacarte" or ((hsPkgs.pkgs-errors).buildDepError "operational-alacarte"))
          (hsPkgs."prelude-edsl" or ((hsPkgs.pkgs-errors).buildDepError "prelude-edsl"))
          (hsPkgs."syntactic" or ((hsPkgs.pkgs-errors).buildDepError "syntactic"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "NumSimpl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."raw-feldspar" or ((hsPkgs.pkgs-errors).buildDepError "raw-feldspar"))
            (hsPkgs."syntactic" or ((hsPkgs.pkgs-errors).buildDepError "syntactic"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            ];
          buildable = true;
          };
        "Compilation" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."raw-feldspar" or ((hsPkgs.pkgs-errors).buildDepError "raw-feldspar"))
            ];
          buildable = true;
          };
        "Semantics" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."raw-feldspar" or ((hsPkgs.pkgs-errors).buildDepError "raw-feldspar"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            ];
          buildable = true;
          };
        "Examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."raw-feldspar" or ((hsPkgs.pkgs-errors).buildDepError "raw-feldspar"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }
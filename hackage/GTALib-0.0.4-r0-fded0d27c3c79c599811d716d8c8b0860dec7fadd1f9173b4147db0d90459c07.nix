{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "GTALib"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emoto@mist.i.u-tokyo.ac.jp";
      author = "Kento Emoto";
      homepage = "https://bitbucket.org/emoto/gtalib";
      url = "";
      synopsis = "A library for GTA programming";
      description = "This package provides the core functionalities of the GTA (Generate, Test, and Aggregate) programming framework on Haskell (c.f., Kento Emoto, Sebastian Fischer, Zhenjiang Hu: Generate, Test, and Aggregate - A Calculation-based Framework for Systematic Parallel Programming with MapReduce. ESOP 2012: 254-273). (This version is a very early version and dirty. The source files will be cleaned and documented soon.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."GTALib" or ((hsPkgs.pkgs-errors).buildDepError "GTALib"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }
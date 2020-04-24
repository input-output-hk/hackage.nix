{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "pure-priority-queue-tests"; version = "0.12"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brad.larsen@gmail.com";
      author = "Bradford Larsen";
      homepage = "";
      url = "";
      synopsis = "Tests for the pure-priority-queue package";
      description = "This package provides a test program for the\npure-priority-queue package.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pure-priority-queue-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pure-priority-queue" or ((hsPkgs.pkgs-errors).buildDepError "pure-priority-queue"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            ];
          buildable = true;
          };
        };
      };
    }
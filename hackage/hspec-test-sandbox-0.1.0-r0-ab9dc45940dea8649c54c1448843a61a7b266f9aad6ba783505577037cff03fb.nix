{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hspec-test-sandbox"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "";
      url = "";
      synopsis = "Hspec convenience functions for use with test-sandbox";
      description = "This package provides useful functions to write around the Test.Hspec unit-test functions,\nallowing them to be used easily in the Test.Sandbox monad provided by the test-sandbox package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."test-sandbox" or ((hsPkgs.pkgs-errors).buildDepError "test-sandbox"))
          (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-sandbox" or ((hsPkgs.pkgs-errors).buildDepError "test-sandbox"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-test-sandbox" or ((hsPkgs.pkgs-errors).buildDepError "hspec-test-sandbox"))
            ];
          buildable = true;
          };
        };
      };
    }
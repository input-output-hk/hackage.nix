{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "tasty-hspec"; version = "1.1.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mitchellwrosen@gmail.com";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/tasty-hspec";
      url = "";
      synopsis = "Hspec support for the Tasty test framework.";
      description = "This package provides a Tasty provider for Hspec test\nsuites.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
          (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"));
        buildable = true;
        };
      };
    }
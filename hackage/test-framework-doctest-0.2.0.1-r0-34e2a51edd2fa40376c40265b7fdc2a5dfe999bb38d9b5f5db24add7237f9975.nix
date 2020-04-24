{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "test-framework-doctest"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sakariij@gmail.com";
      author = "Sakari Jokinen";
      homepage = "";
      url = "";
      synopsis = "Test.Framework wrapper for DocTest";
      description = "Test.Framework wrapper for DocTest";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
          (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
          (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))
            ];
          buildable = true;
          };
        };
      };
    }
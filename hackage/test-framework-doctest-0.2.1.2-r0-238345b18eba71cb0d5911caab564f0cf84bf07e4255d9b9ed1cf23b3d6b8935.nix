{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "test-framework-doctest"; version = "0.2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sakariij@gmail.com";
      author = "Sakari Jokinen";
      homepage = "";
      url = "";
      synopsis = "Test.Framework wrapper for DocTest";
      description = "This package is deprecated, use Doctest`s cabal integration instead.\n\nSee: <https://github.com/sol/doctest-haskell#cabal-integration>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
          (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-doctest" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-doctest"))
            ];
          buildable = true;
          };
        };
      };
    }
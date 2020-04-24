{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "type-assertions"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "Alexis King";
      author = "";
      homepage = "https://github.com/lexi-lambda/type-assertions#readme";
      url = "";
      synopsis = "Runtime type assertions for testing";
      description = "This package provides a way to make runtime assertions about types that\ncooperate with the typechecker, intended for use in testing. For more\ninformation, see the module documentation for \"Test.TypeAssertions\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "type-assertions-test-suite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."test-fixture" or ((hsPkgs.pkgs-errors).buildDepError "test-fixture"))
            (hsPkgs."type-assertions" or ((hsPkgs.pkgs-errors).buildDepError "type-assertions"))
            ];
          buildable = true;
          };
        };
      };
    }
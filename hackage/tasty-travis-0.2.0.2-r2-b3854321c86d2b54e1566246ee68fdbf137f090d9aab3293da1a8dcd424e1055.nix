{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-travis"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2017-2019 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/tasty-travis";
      url = "";
      synopsis = "Fancy Travis CI output for tasty tests.";
      description = "Fancy <https://travis-ci.org/ Travis CI> output for\n<https://hackage.haskell.org/package/tasty tasty> tests. Features include:\n\n* Folded output\n\n* Coloured output\n\n* Hiding successful tests";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-travis" or ((hsPkgs.pkgs-errors).buildDepError "tasty-travis"))
            ];
          buildable = true;
          };
        };
      };
    }
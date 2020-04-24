{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "list-fusion-probe"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "2014 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "";
      url = "";
      synopsis = "testing list fusion for success";
      description = "This package provides a function @fuseThis@ that can be\nwrapped around a list. If that list is fused away, all is\nwell. If not, a runtime error will occur.";
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
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."list-fusion-probe" or ((hsPkgs.pkgs-errors).buildDepError "list-fusion-probe"))
            ];
          buildable = true;
          };
        };
      };
    }
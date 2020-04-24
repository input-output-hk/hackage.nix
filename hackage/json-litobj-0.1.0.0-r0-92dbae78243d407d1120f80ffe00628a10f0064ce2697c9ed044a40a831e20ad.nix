{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "json-litobj"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathan.kochems@gmail.com";
      author = "Jonathan Kochems";
      homepage = "https://github.com/jonathankochems/json-litobj";
      url = "";
      synopsis = "Extends Text.JSON to handle literal JS objects.";
      description = "This module extends Text.JSON to enable the decoding of strings containing literal JS objects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          ];
        buildable = true;
        };
      tests = {
        "test-json-litobj" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."json-litobj" or ((hsPkgs.pkgs-errors).buildDepError "json-litobj"))
            ];
          buildable = true;
          };
        };
      };
    }
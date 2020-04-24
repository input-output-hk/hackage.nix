{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cmd-item"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 Geraud Boyer";
      maintainer = "Geraud Boyer <geraud@gmail.com>";
      author = "Geraud Boyer";
      homepage = "https://github.com/geraud/cmd-item";
      url = "";
      synopsis = "Library to compose and reuse command line fragments";
      description = "Library to compose and reuse command line fragments";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."templater" or ((hsPkgs.pkgs-errors).buildDepError "templater"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmd-item" or ((hsPkgs.pkgs-errors).buildDepError "cmd-item"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-laws" or ((hsPkgs.pkgs-errors).buildDepError "hspec-laws"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
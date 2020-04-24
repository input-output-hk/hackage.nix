{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "quickcheck-assertions"; version = "0.3.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "s9gf4ult@gmail.com";
      author = "Aleksey Uymanov";
      homepage = "https://github.com/s9gf4ult/quickcheck-assertions";
      url = "";
      synopsis = "HUnit like assertions for QuickCheck";
      description = "Library with convenient assertions for QuickCheck properties like in HUnit";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
          (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
          ];
        buildable = true;
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."quickcheck-assertions" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-assertions"))
            (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
            ];
          buildable = true;
          };
        };
      };
    }
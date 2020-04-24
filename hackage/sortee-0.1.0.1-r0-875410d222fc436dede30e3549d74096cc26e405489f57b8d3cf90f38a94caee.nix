{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "sortee"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2019 b123400";
      maintainer = "i@b123400.net";
      author = "b123400";
      homepage = "https://github.com/b123400/sortee#readme";
      url = "";
      synopsis = "Generate string for sort key";
      description = "Please see the README on GitHub at <https://github.com/b123400/sortee#readme>";
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
        "sortee-test" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."sortee" or ((hsPkgs.pkgs-errors).buildDepError "sortee"))
            ];
          buildable = true;
          };
        };
      };
    }
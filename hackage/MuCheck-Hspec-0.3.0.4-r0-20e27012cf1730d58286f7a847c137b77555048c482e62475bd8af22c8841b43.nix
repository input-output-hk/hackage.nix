{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "MuCheck-Hspec"; version = "0.3.0.4"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rahul@gopinath.org";
      author = "Rahul Gopinath <rahul@gopinath.org>";
      homepage = "https://bitbucket.com/osu-testing/mucheck-hspec";
      url = "";
      synopsis = "Automated Mutation Testing for Hspec tests";
      description = "This package contains the test adapter for Hspec tests to use it with MuCheck";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
          (hsPkgs."MuCheck" or ((hsPkgs.pkgs-errors).buildDepError "MuCheck"))
          ];
        buildable = true;
        };
      exes = {
        "mucheck-hspec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            (hsPkgs."MuCheck" or ((hsPkgs.pkgs-errors).buildDepError "MuCheck"))
            ];
          buildable = true;
          };
        };
      };
    }
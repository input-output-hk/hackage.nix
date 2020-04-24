{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gitlib-cross"; version = "2.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@fpcomplete.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Run tests between repositories";
      description = "Test runner which runs tests between repositories.";
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
        "smoke" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gitlib" or ((hsPkgs.pkgs-errors).buildDepError "gitlib"))
            (hsPkgs."gitlib-test" or ((hsPkgs.pkgs-errors).buildDepError "gitlib-test"))
            (hsPkgs."gitlib-libgit2" or ((hsPkgs.pkgs-errors).buildDepError "gitlib-libgit2"))
            (hsPkgs."gitlib-cmdline" or ((hsPkgs.pkgs-errors).buildDepError "gitlib-cmdline"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or ((hsPkgs.pkgs-errors).buildDepError "hspec-expectations"))
            ];
          buildable = true;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "safe-exceptions"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 FP Complete";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/githubuser/safe-exceptions#readme";
      url = "";
      synopsis = "Safe, consistent, and easy exception handling";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "safe-exceptions-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
            ];
          buildable = true;
          };
        };
      };
    }
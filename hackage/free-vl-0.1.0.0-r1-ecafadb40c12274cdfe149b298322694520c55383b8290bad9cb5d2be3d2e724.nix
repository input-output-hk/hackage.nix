{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "free-vl"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2010 Author Here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "http://github.com/githubuser/free-vl#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."free-vl" or ((hsPkgs.pkgs-errors).buildDepError "free-vl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "free-vl-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."free-vl" or ((hsPkgs.pkgs-errors).buildDepError "free-vl"))
            ];
          buildable = true;
          };
        };
      };
    }
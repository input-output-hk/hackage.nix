{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sqsd-local"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "AllRightsReserved";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "https://github.com/owickstrom/sqsd-local#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sqsd-local" = {
          depends = [
            (hsPkgs."amazonka" or ((hsPkgs.pkgs-errors).buildDepError "amazonka"))
            (hsPkgs."amazonka-sqs" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-sqs"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
            ];
          buildable = true;
          };
        };
      tests = {
        "sqsd-local-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sqsd-local" or ((hsPkgs.pkgs-errors).buildDepError "sqsd-local"))
            ];
          buildable = true;
          };
        };
      };
    }
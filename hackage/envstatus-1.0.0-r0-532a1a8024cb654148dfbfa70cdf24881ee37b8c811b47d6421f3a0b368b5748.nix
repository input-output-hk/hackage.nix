{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "envstatus"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "gregory.bataille@gmail.com";
      author = "Grégory Bataille";
      homepage = "";
      url = "";
      synopsis = "Display efficiently the state of the local environment";
      description = "Meant to gather in a fast manner all the information you want from your local\nenvironment (like git status, python venv, terraform workspace, ...).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "envstatus" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."envstatus" or ((hsPkgs.pkgs-errors).buildDepError "envstatus"))
            ];
          buildable = true;
          };
        };
      tests = {
        "envstatus-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            (hsPkgs."PyF" or ((hsPkgs.pkgs-errors).buildDepError "PyF"))
            (hsPkgs."envstatus" or ((hsPkgs.pkgs-errors).buildDepError "envstatus"))
            ];
          buildable = true;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "CSPM-cspm"; version = "0.8.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      author = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      homepage = "";
      url = "";
      synopsis = "cspm command line tool for analyzing CSPM specifications.";
      description = "cspm is a small command line tool for analyzing CSPM specifications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."CSPM-Frontend" or ((hsPkgs.pkgs-errors).buildDepError "CSPM-Frontend"))
          (hsPkgs."CSPM-CoreLanguage" or ((hsPkgs.pkgs-errors).buildDepError "CSPM-CoreLanguage"))
          (hsPkgs."CSPM-FiringRules" or ((hsPkgs.pkgs-errors).buildDepError "CSPM-FiringRules"))
          (hsPkgs."CSPM-Interpreter" or ((hsPkgs.pkgs-errors).buildDepError "CSPM-Interpreter"))
          (hsPkgs."CSPM-ToProlog" or ((hsPkgs.pkgs-errors).buildDepError "CSPM-ToProlog"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
          (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
          ];
        buildable = true;
        };
      exes = {
        "cspm" = {
          depends = [
            (hsPkgs."CSPM-Frontend" or ((hsPkgs.pkgs-errors).buildDepError "CSPM-Frontend"))
            (hsPkgs."CSPM-CoreLanguage" or ((hsPkgs.pkgs-errors).buildDepError "CSPM-CoreLanguage"))
            (hsPkgs."CSPM-FiringRules" or ((hsPkgs.pkgs-errors).buildDepError "CSPM-FiringRules"))
            (hsPkgs."CSPM-Interpreter" or ((hsPkgs.pkgs-errors).buildDepError "CSPM-Interpreter"))
            (hsPkgs."CSPM-ToProlog" or ((hsPkgs.pkgs-errors).buildDepError "CSPM-ToProlog"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
            (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
            ];
          buildable = true;
          };
        };
      };
    }
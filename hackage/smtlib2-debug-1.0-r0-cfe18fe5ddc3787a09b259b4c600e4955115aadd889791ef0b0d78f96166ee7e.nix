{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "smtlib2-debug"; version = "1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "guenther@forsyte.at";
      author = "Henning Günther <guenther@forsyte.at>";
      homepage = "";
      url = "";
      synopsis = "Dump the communication with an SMT solver for debugging purposes.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."smtlib2" or ((hsPkgs.pkgs-errors).buildDepError "smtlib2"))
          (hsPkgs."smtlib2-pipe" or ((hsPkgs.pkgs-errors).buildDepError "smtlib2-pipe"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."atto-lisp" or ((hsPkgs.pkgs-errors).buildDepError "atto-lisp"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
          ];
        buildable = true;
        };
      };
    }
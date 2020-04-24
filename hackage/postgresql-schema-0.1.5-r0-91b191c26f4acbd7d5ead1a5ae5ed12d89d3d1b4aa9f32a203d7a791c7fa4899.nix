{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-schema"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Mark Fine";
      maintainer = "mark.fine@gmail.com";
      author = "Mark Fine";
      homepage = "https://github.com/mfine/postgresql-schema";
      url = "";
      synopsis = "PostgreSQL Schema Management";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
          (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
          (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "schema-add" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."postgresql-schema" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-schema"))
            (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "schema-apply" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."postgresql-schema" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-schema"))
            (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
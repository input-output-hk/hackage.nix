{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-simple-opts"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2020 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/postgresql-simple-opts#readme";
      url = "";
      synopsis = "An optparse-applicative and envy parser for postgres options";
      description = "An optparse-applicative and envy parser for postgres options. See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."uri-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "uri-bytestring"))
          (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
          (hsPkgs."postgres-options" or ((hsPkgs.pkgs-errors).buildDepError "postgres-options"))
          (hsPkgs."envy" or ((hsPkgs.pkgs-errors).buildDepError "envy"))
          ];
        buildable = true;
        };
      tests = {
        "postgresql-simple-opts-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."envy" or ((hsPkgs.pkgs-errors).buildDepError "envy"))
            (hsPkgs."postgresql-simple-opts" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple-opts"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."postgres-options" or ((hsPkgs.pkgs-errors).buildDepError "postgres-options"))
            ];
          buildable = true;
          };
        };
      };
    }
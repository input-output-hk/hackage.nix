{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-groundhog-converters"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott Murphy <scottmurphy09@gmail.com>";
      author = "Scott Murphy <scottmurphy09@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Tasty Tests for groundhog converters";
      description = "Groundhog converters are vulnerable to serialization changes.  Round trip tests and a SQLite test framework are provided\nto help correct this.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."groundhog-converters" or ((hsPkgs.pkgs-errors).buildDepError "groundhog-converters"))
          (hsPkgs."groundhog" or ((hsPkgs.pkgs-errors).buildDepError "groundhog"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
          (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
          (hsPkgs."groundhog-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "groundhog-sqlite"))
          (hsPkgs."groundhog-th" or ((hsPkgs.pkgs-errors).buildDepError "groundhog-th"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bimap" or ((hsPkgs.pkgs-errors).buildDepError "bimap"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }
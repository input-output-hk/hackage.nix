{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "groundhog-converters"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott Murphy <scottmurphy09@gmail.com>";
      author = "Scott Murphy <scottmurphy09@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Extended Converter Library for groundhog embedded types";
      description = "Groundhog allows a programmer to represent a haskell datatype by an equivalent type that is more suited for Database work.\ngroundhog-converters provides a selection of common converters that have proved useful.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bimap" or ((hsPkgs.pkgs-errors).buildDepError "bimap"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
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
      };
    }
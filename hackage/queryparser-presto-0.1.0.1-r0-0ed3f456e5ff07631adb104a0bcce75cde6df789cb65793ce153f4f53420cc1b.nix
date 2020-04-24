{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "queryparser-presto"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "heli@uber.com";
      author = "Heli Wang, David Thomas, Matt Halverson";
      homepage = "";
      url = "";
      synopsis = "Parsing for Presto SQL queries";
      description = "A library for parsing Presto SQL queries into analyzable ASTs.\n\nThis library is to be used with the queryparser library, which\nprovides the common type definitions and analyses across the\ndifferent SQL dialects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."queryparser" or ((hsPkgs.pkgs-errors).buildDepError "queryparser"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."fixed-list" or ((hsPkgs.pkgs-errors).buildDepError "fixed-list"))
          (hsPkgs."predicate-class" or ((hsPkgs.pkgs-errors).buildDepError "predicate-class"))
          ];
        buildable = true;
        };
      };
    }
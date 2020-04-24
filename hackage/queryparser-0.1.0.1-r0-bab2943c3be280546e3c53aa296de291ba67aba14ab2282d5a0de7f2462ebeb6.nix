{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "queryparser"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "heli@uber.com";
      author = "Heli Wang, David Thomas, Matt Halverson";
      homepage = "";
      url = "";
      synopsis = "Analysis and parsing library for SQL queries.";
      description = "A library for parsing SQL queries into well-typed data structures,\nand producing easily quantifiable analyses from said data\nstructures.\n\nCurrently this includes support for Hive, Vertica, and Presto\ndialects of SQL. Parsing for each dialect is provided in their own\npackage, as queryparser-{dialect}";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
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
          (hsPkgs."fixed-list" or ((hsPkgs.pkgs-errors).buildDepError "fixed-list"))
          (hsPkgs."predicate-class" or ((hsPkgs.pkgs-errors).buildDepError "predicate-class"))
          ];
        buildable = true;
        };
      benchmarks = {
        "queryparser-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."queryparser" or ((hsPkgs.pkgs-errors).buildDepError "queryparser"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
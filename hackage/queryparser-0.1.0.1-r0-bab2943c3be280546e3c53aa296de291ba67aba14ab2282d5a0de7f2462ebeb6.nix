{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "queryparser";
        version = "0.1.0.1";
      };
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
      "queryparser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.aeson)
          (hsPkgs.yaml)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.QuickCheck)
          (hsPkgs.fixed-list)
          (hsPkgs.predicate-class)
        ];
      };
      benchmarks = {
        "queryparser-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.queryparser)
            (hsPkgs.criterion)
            (hsPkgs.text)
          ];
        };
      };
    };
  }
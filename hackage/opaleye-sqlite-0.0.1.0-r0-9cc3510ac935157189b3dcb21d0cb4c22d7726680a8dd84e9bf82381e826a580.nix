{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "opaleye-sqlite";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2015 Purely Agile Limited";
      maintainer = "Purely Agile";
      author = "Purely Agile";
      homepage = "https://github.com/tomjaguarpaw/haskell-opaleye";
      url = "";
      synopsis = "An SQL-generating DSL targeting SQLite";
      description = "An SQL-generating DSL targeting SQLite.  Allows\nSQLite queries to be written within Haskell in a\ntypesafe and composable fashion.";
      buildType = "Simple";
    };
    components = {
      "opaleye-sqlite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.bytestring)
          (hsPkgs.contravariant)
          (hsPkgs.direct-sqlite)
          (hsPkgs.pretty)
          (hsPkgs.product-profunctors)
          (hsPkgs.profunctors)
          (hsPkgs.semigroups)
          (hsPkgs.sqlite-simple)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.uuid)
          (hsPkgs.void)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.profunctors)
            (hsPkgs.product-profunctors)
            (hsPkgs.QuickCheck)
            (hsPkgs.semigroups)
            (hsPkgs.sqlite-simple)
            (hsPkgs.opaleye-sqlite)
          ];
        };
        "tutorial" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.profunctors)
            (hsPkgs.product-profunctors)
            (hsPkgs.sqlite-simple)
            (hsPkgs.time)
            (hsPkgs.opaleye-sqlite)
          ];
        };
      };
    };
  }
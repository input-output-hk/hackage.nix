{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { debuggraph = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "dsh-sql";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex@etc-network.de";
      author = "Alexander Ulrich";
      homepage = "";
      url = "";
      synopsis = "SQL backend for Database Supported Haskell (DSH)";
      description = "This package provides an SQL backend for Database Supported Haskell\n(DSH). It provides the ability to generate SQL code and execute DSH\nqueries on supported SQL database engines. Currently, only\nPostgreSQL is supported.";
      buildType = "Simple";
    };
    components = {
      "dsh-sql" = {
        depends  = [
          (hsPkgs.DSH)
          (hsPkgs.random)
          (hsPkgs.process)
          (hsPkgs.Decimal)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-odbc)
          (hsPkgs.aeson)
          (hsPkgs.algebra-dag)
          (hsPkgs.algebra-sql)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.set-monad)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "sqltests" = {
          depends  = [
            (hsPkgs.DSH)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-odbc)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.containers)
            (hsPkgs.dsh-sql)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }
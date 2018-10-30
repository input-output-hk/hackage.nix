{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "transfer-db";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Mihai Giurgeanu";
      maintainer = "mihai.giurgeanu@gmail.com";
      author = "Mihai Giurgeanu";
      homepage = "http://hub.darcs.net/mihaigiurgeanu/transfer-db";
      url = "";
      synopsis = "";
      description = "Simple SQL/CLI application that transfers data between 2 databases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.sqlcli)
          (hsPkgs.sqlcli-odbc)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.logging)
          (hsPkgs.store)
          (hsPkgs.store-core)
          (hsPkgs.th-utilities)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.monad-control)
          (hsPkgs.stm)
          (hsPkgs.temporary)
          (hsPkgs.containers)
          (hsPkgs.clock)
        ];
      };
      exes = {
        "transfer-db" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.console-program)
            (hsPkgs.bytestring)
            (hsPkgs.logging)
            (hsPkgs.time)
            (hsPkgs.stm)
            (hsPkgs.containers)
            (hsPkgs.clock)
            (hsPkgs.monad-control)
            (hsPkgs.cassava)
            (hsPkgs.sqlcli)
            (hsPkgs.sqlcli-odbc)
            (hsPkgs.transfer-db)
          ];
        };
      };
      tests = {
        "hspec-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.store)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.cpu)
            (hsPkgs.transfer-db)
            (hsPkgs.sqlcli)
          ];
        };
      };
    };
  }
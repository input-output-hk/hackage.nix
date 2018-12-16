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
        name = "persistable-types-HDBC-pg";
        version = "0.0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015-2018 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "HDBC and Relational-Record instances of PostgreSQL extended types";
      description = "This package contains HDBC Convertible instances and\nRelational-Record persistable instances of PostgreSQL extended types\nSupported extended types: inet, cidr";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.text-postgresql)
          (hsPkgs.convertible)
          (hsPkgs.HDBC)
          (hsPkgs.persistable-record)
          (hsPkgs.relational-query)
          (hsPkgs.relational-query-HDBC)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.relational-query)
            (hsPkgs.relational-query-HDBC)
            (hsPkgs.text-postgresql)
            (hsPkgs.persistable-types-HDBC-pg)
          ] ++ pkgs.lib.optional (compiler.isGhc && false) (hsPkgs.ghc-prim);
        };
      };
    };
  }
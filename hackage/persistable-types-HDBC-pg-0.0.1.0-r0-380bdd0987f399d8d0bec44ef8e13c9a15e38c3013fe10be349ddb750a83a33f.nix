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
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "HDBC Convertible instances and HRR persistable instances of PostgreSQL extended types";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text-postgresql)
          (hsPkgs.convertible)
          (hsPkgs.HDBC)
          (hsPkgs.persistable-record)
          (hsPkgs.relational-query-HDBC)
        ];
      };
    };
  }
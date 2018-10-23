{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "eventful-postgresql";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "David Reaver";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Postgres implementations for eventful";
      description = "Postgres implementations for eventful";
      buildType = "Simple";
    };
    components = {
      "eventful-postgresql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.eventful-core)
          (hsPkgs.eventful-sql-common)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.persistent)
          (hsPkgs.persistent-postgresql)
          (hsPkgs.text)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.eventful-core)
            (hsPkgs.eventful-sql-common)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.persistent)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.eventful-test-helpers)
          ];
        };
        "style" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.eventful-core)
            (hsPkgs.eventful-sql-common)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.persistent)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.text)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }
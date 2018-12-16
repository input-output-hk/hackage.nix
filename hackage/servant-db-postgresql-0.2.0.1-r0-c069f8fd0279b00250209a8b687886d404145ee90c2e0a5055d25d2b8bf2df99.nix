{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-db-postgresql";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 (c) Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "";
      url = "";
      synopsis = "Derive a postgres client to database API specified by servant-db";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.postgresql-query)
          (hsPkgs.postgresql-simple)
          (hsPkgs.servant)
          (hsPkgs.servant-db)
          (hsPkgs.text)
        ];
      };
      exes = {
        "servant-db-postgresql-example01" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.monad-logger)
            (hsPkgs.postgresql-query)
            (hsPkgs.servant-db)
            (hsPkgs.servant-db-postgresql)
            (hsPkgs.time)
            (hsPkgs.transformers-base)
          ];
        };
      };
      tests = {
        "servant-db-postgresql-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.derive)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.monad-logger)
            (hsPkgs.optparse-applicative)
            (hsPkgs.postgresql-query)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.servant-db)
            (hsPkgs.servant-db-postgresql)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers-base)
          ];
        };
      };
    };
  }
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
        name = "pg-transact";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/pg-transact#readme";
      url = "";
      synopsis = "Another postgresql-simple transaction monad";
      description = "Another postgresql-simple transaction monad";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.postgresql-simple)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.exceptions)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "pg-transact-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.postgresql-simple)
            (hsPkgs.pg-transact)
            (hsPkgs.tmp-postgres)
          ];
        };
      };
    };
  }
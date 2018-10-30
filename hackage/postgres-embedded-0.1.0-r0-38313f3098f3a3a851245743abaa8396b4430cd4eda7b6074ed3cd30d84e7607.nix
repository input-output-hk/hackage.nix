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
        name = "postgres-embedded";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "2017 Ilya Murzinov";
      maintainer = "murz42@gmail.com";
      author = "Ilya Murzinov";
      homepage = "https://github.com/ilya-murzinov/postgres-embedded";
      url = "";
      synopsis = "";
      description = "Library for easily running embedded PostgreSQL server for tests";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.shell-conduit)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-postgresql)
        ];
      };
      tests = {
        "postgres-embedded-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.postgres-embedded)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }
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
      specVersion = "1.18";
      identifier = {
        name = "postgres-embedded";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "2017-2018 Ilya Murzinov and contributors";
      maintainer = "Ilya Murzinov <murz42@gmail.com>";
      author = "Ilya Murzinov";
      homepage = "https://github.com/ilya-murzinov/postgres-embedded";
      url = "";
      synopsis = "Library for easily running embedded PostgreSQL server for tests.";
      description = "Library for easily running embedded PostgreSQL server for tests.\nIt downloads, runs, checks and stops PostgreSQL Database instance for you.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.network)
          (hsPkgs.process)
        ];
      };
      tests = {
        "postgres-embedded-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.postgres-embedded)
            (hsPkgs.postgresql-simple)
            (hsPkgs.process)
          ];
        };
      };
    };
  }
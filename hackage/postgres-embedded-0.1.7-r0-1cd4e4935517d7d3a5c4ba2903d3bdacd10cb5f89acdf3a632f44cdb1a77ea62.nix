{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "postgres-embedded"; version = "0.1.7"; };
      license = "MIT";
      copyright = "2017 Ilya Murzinov";
      maintainer = "Ilya Murzinov <murz42@gmail.com>";
      author = "Ilya Murzinov";
      homepage = "https://github.com/ilya-murzinov/postgres-embedded";
      url = "";
      synopsis = "Library for easily running embedded PostgreSQL server for tests";
      description = "Library for easily running embedded PostgreSQL server for tests";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.shell-conduit)
          (hsPkgs.network)
          ];
        };
      tests = {
        "postgres-embedded-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.postgres-embedded)
            (hsPkgs.postgresql-simple)
            (hsPkgs.shell-conduit)
            ];
          };
        };
      };
    }
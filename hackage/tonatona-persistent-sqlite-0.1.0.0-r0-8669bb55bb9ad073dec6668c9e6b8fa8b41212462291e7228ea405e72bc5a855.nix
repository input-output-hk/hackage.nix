{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tonatona-persistent-sqlite";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "2018 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto, Dennis Gosnell";
      homepage = "https://github.com/tonatona-project/tonatona#readme";
      url = "";
      synopsis = "tonatona plugin for accessing Sqlite database.";
      description = "Tonatona plugin for accessing Sqlite database. This package provides a tonatona plugin for accessing Sqlite database. This plugin uses persistent to actually accessing Sqlite.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.monad-logger)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.resource-pool)
          (hsPkgs.rio)
          (hsPkgs.tonaparser)
          (hsPkgs.tonatona)
          ];
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.Glob)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.monad-logger)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.resource-pool)
            (hsPkgs.rio)
            (hsPkgs.tonaparser)
            (hsPkgs.tonatona)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.monad-logger)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.resource-pool)
            (hsPkgs.rio)
            (hsPkgs.tonaparser)
            (hsPkgs.tonatona)
            ];
          };
        };
      };
    }
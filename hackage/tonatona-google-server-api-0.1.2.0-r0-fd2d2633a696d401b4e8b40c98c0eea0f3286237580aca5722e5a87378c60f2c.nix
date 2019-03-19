{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tonatona-google-server-api";
        version = "0.1.2.0";
        };
      license = "MIT";
      copyright = "2019 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/tonatona-google-server-api#readme";
      url = "";
      synopsis = "tonatona plugin for google-server-api";
      description = "Tonatona plugin for [google-server-api](https://hackage.haskell.org/package/google-server-api). This package provides a tonatona plugin to use Google API for server to server applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.google-server-api)
          (hsPkgs.monad-logger)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.resource-pool)
          (hsPkgs.servant-client)
          (hsPkgs.tonalude)
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
            (hsPkgs.google-server-api)
            (hsPkgs.monad-logger)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.resource-pool)
            (hsPkgs.servant-client)
            (hsPkgs.tonalude)
            (hsPkgs.tonaparser)
            (hsPkgs.tonatona)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.google-server-api)
            (hsPkgs.monad-logger)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.resource-pool)
            (hsPkgs.servant-client)
            (hsPkgs.tonalude)
            (hsPkgs.tonaparser)
            (hsPkgs.tonatona)
            ];
          };
        };
      };
    }
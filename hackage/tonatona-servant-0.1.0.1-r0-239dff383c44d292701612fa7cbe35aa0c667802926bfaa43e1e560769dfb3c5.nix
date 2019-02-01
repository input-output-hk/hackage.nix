{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tonatona-servant"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2018 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto, Dennis Gosnell";
      homepage = "https://github.com/tonatona-project/tonatona#readme";
      url = "";
      synopsis = "tonatona plugin for servant.";
      description = "Tonatona plugin for @servant@. This package provides a tonatona plugin for @servant@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.http-types)
          (hsPkgs.monad-logger)
          (hsPkgs.rio)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.tonaparser)
          (hsPkgs.tonatona)
          (hsPkgs.tonatona-logger)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          ];
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.Glob)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.exceptions)
            (hsPkgs.http-types)
            (hsPkgs.monad-logger)
            (hsPkgs.rio)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.tonaparser)
            (hsPkgs.tonatona)
            (hsPkgs.tonatona-logger)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.http-types)
            (hsPkgs.monad-logger)
            (hsPkgs.rio)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.tonaparser)
            (hsPkgs.tonatona)
            (hsPkgs.tonatona-logger)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }
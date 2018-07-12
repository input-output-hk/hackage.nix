{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yu-core";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (C) 2017 Johann Lee";
        maintainer = "qinka@live.com";
        author = "Johann Lee";
        homepage = "https://github.com/Qinka/Yu";
        url = "";
        synopsis = "The core of Yu.";
        description = "The core module for Yu.";
        buildType = "Simple";
      };
      components = {
        "yu-core" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yu-utils
            hsPkgs.yu-auth
          ];
        };
        tests = {
          "test-mvc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.yu-utils
              hsPkgs.yu-core
              hsPkgs.blaze-markup
            ];
          };
        };
      };
    }
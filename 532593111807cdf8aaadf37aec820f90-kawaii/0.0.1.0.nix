{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kawaii";
          version = "0.0.1.0";
        };
        license = "LicenseRef-Apache";
        copyright = "";
        maintainer = "Eduardo Trujillo <ed@chromabits.com>";
        author = "";
        homepage = "https://phabricator.chromabits.com/diffusion/KWAI/";
        url = "";
        synopsis = "Utilities for serving static sites and blogs with Wai/Warp";
        description = "";
        buildType = "Simple";
      };
      components = {
        "kawaii" = {
          depends  = [
            hsPkgs.base
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.lens
            hsPkgs.bytestring
            hsPkgs.hakyll
            hsPkgs.optparse-applicative
            hsPkgs.warp
            hsPkgs.warp-tls
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.wai-app-static
            hsPkgs.streaming-commons
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.monad-logger
            hsPkgs.monad-control
          ];
        };
        tests = {
          "wai-static-extra-spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.safe
              hsPkgs.text
              hsPkgs.lens
              hsPkgs.bytestring
              hsPkgs.hakyll
              hsPkgs.optparse-applicative
              hsPkgs.warp
              hsPkgs.warp-tls
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.wai-app-static
              hsPkgs.streaming-commons
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.lifted-base
              hsPkgs.mtl
              hsPkgs.monad-logger
              hsPkgs.monad-control
              hsPkgs.hakyll-serve
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }
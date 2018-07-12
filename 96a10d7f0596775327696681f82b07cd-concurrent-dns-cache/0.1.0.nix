{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "concurrent-dns-cache";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "Concurrent DNS cache";
        description = "Concurrent DNS cache";
        buildType = "Simple";
      };
      components = {
        "concurrent-dns-cache" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.async
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.dns
            hsPkgs.iproute
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.network
            hsPkgs.psqueues
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        exes = {
          "main" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.dns
              hsPkgs.iproute
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.network
              hsPkgs.psqueues
              hsPkgs.stm
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.concurrent-dns-cache
              hsPkgs.dns
              hsPkgs.hspec
            ];
          };
        };
      };
    }
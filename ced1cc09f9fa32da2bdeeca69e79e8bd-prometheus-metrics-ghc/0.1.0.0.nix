{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "prometheus-metrics-ghc";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "2015 Will Coster";
        maintainer = "willcoster@gmail.com";
        author = "Will Coster";
        homepage = "https://github.com/fimad/prometheus-haskell";
        url = "";
        synopsis = "Metrics exposing GHC runtime information for use with prometheus-client.";
        description = "Metrics exposing GHC runtime information for use with prometheus-client.";
        buildType = "Simple";
      };
      components = {
        prometheus-metrics-ghc = {
          depends  = [
            hsPkgs.base
            hsPkgs.prometheus-client
            hsPkgs.utf8-string
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.prometheus-client
            ];
          };
        };
      };
    }
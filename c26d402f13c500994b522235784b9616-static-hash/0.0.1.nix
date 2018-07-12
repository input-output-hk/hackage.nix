{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "static-hash";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "Immutable hash";
        description = "Pure immutable hash whose lookup is O(1)";
        buildType = "Simple";
      };
      components = {
        "static-hash" = {
          depends  = [
            hsPkgs.base
            hsPkgs.primes
            hsPkgs.hashable
            hsPkgs.array
            hsPkgs.containers
          ];
        };
      };
    }
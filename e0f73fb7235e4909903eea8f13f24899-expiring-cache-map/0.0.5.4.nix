{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "expiring-cache-map";
          version = "0.0.5.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Edward L. Blake";
        maintainer = "edwardlblake@gmail.com";
        author = "Edward L. Blake";
        homepage = "https://github.com/elblake/expiring-cache-map";
        url = "";
        synopsis = "General purpose simple caching.";
        description = "A simple general purpose shared state cache map with automatic expiration\nof values, for caching the results of accessing a resource such as reading\na file. With variations for Ord and Hashable keys using \"Data.Map.Strict\"\nand \"Data.HashMap.Strict\", respectively.";
        buildType = "Simple";
      };
      components = {
        expiring-cache-map = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          test-threads = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
            ];
          };
          test-sequence = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }
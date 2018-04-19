{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reserve";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2014 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "Reserve reloads web applications";
        description = "Universal and robust reloading for Haskell web applications";
        buildType = "Simple";
      };
      components = {
        exes = {
          reserve = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.directory
              hsPkgs.network
              hsPkgs.unix
              hsPkgs.process
              hsPkgs.http-types
              hsPkgs.http-kit
              hsPkgs.bytestring
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.directory
              hsPkgs.network
              hsPkgs.unix
              hsPkgs.process
              hsPkgs.http-types
              hsPkgs.http-kit
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.http-conduit
              hsPkgs.warp
            ];
          };
        };
      };
    }
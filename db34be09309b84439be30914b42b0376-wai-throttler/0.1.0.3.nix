{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-throttler";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "maxim.kulkin@gmail.com";
        author = "Maxim Kulkin";
        homepage = "";
        url = "";
        synopsis = "Wai middleware for request throttling";
        description = "";
        buildType = "Simple";
      };
      components = {
        wai-throttler = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.wai
            hsPkgs.http-types
          ];
        };
      };
    }
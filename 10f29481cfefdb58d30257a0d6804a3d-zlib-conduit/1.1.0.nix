{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "zlib-conduit";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Streaming compression/decompression via conduits. (deprecated)";
        description = "Streaming compression/decompression via conduits.";
        buildType = "Simple";
      };
      components = {
        zlib-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
          ];
        };
      };
    }
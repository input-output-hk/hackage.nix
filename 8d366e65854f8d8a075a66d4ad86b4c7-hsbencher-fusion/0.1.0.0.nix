{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsbencher-fusion";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "rrnewton@gmail.com";
        author = "Ryan Newton";
        homepage = "";
        url = "";
        synopsis = "Backend for uploading benchmark data to Google Fusion Tables.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hsbencher-fusion" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-conduit
            hsPkgs.mtl
            hsPkgs.handa-gdata
            hsPkgs.hsbencher
          ];
        };
      };
    }
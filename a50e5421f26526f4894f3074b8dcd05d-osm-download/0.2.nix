{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "osm-download";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas.DuBuisson@gmail.com";
        author = "Rob Stewart, Thomas M. DuBuisson";
        homepage = "";
        url = "";
        synopsis = "Download Open Street Map tiles";
        description = "Download and locally cache open street map tiles based on HTTP\ncache control headers.";
        buildType = "Simple";
      };
      components = {
        osm-download = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.bytestring
            hsPkgs.gps
            hsPkgs.containers
            hsPkgs.acid-state
            hsPkgs.safecopy
            hsPkgs.mtl
            hsPkgs.transformers-base
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.stm
            hsPkgs.monadIO
            hsPkgs.stm-chans
          ];
        };
      };
    }
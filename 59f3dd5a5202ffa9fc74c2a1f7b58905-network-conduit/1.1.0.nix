{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network-conduit";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Stream socket data using conduits. (deprecated)";
        description = "Stream socket data using conduits.";
        buildType = "Simple";
      };
      components = {
        network-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
          ];
        };
      };
    }
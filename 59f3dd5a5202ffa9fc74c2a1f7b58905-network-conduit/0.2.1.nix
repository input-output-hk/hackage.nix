{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-bytestring = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network-conduit";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Stream socket data using conduits.";
        description = "Stream socket data using conduits.";
        buildType = "Simple";
      };
      components = {
        network-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.conduit
          ] ++ (if _flags.network-bytestring
            then [
              hsPkgs.network
              hsPkgs.network-bytestring
            ]
            else [ hsPkgs.network ]);
        };
      };
    }
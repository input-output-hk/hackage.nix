{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      network-bytestring = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network-conduit";
          version = "0.6.1.1";
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
            hsPkgs.lifted-base
            hsPkgs.monad-control
          ] ++ (if _flags.network-bytestring
            then [
              hsPkgs.network
              hsPkgs.network-bytestring
            ]
            else [ hsPkgs.network ]);
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.conduit
              hsPkgs.base
              hsPkgs.network-conduit
            ];
          };
        };
      };
    }
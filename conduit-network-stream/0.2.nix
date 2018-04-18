{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "conduit-network-stream";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mail@nils.cc";
        author = "Nils Schweinsberg <mail@nils.cc>";
        homepage = "";
        url = "";
        synopsis = "A base layer for network protocols using Conduits";
        description = "A base layer for network protocols using Conduits";
        buildType = "Simple";
      };
      components = {
        conduit-network-stream = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.conduit
            hsPkgs.network-conduit
          ];
        };
      };
    }
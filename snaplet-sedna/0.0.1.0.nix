{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "snaplet-sedna";
          version = "0.0.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Eric Jones (ericclaudejones at gmail.com)";
        author = "Eric C. Jones";
        homepage = "";
        url = "";
        synopsis = "Snaplet for Sedna Bindings. Essentailly a rip of snaplet-hdbc.";
        description = "Snaplet for Sedna native XML database bindings.\nhttp://www.sedna.org/";
        buildType = "Simple";
      };
      components = {
        snaplet-sedna = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.monad-control
            hsPkgs.resource-pool
            hsPkgs.sednaDBXML
            hsPkgs.snap
          ];
        };
      };
    }
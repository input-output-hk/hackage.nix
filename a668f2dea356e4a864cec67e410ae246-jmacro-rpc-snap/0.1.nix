{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "jmacro-rpc-snap";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gershomb@gmail.com";
        author = "Gershom Bazerman";
        homepage = "http://patch-tag.com/r/gershomb/jmacro-rpc";
        url = "";
        synopsis = "Snap backend for jmacro-rpc";
        description = "Provides functions for serving jmacro-rpc json rpcs from Snap.";
        buildType = "Simple";
      };
      components = {
        "jmacro-rpc-snap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.jmacro
            hsPkgs.jmacro-rpc
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.snap-core
            hsPkgs.aeson
          ];
        };
      };
    }
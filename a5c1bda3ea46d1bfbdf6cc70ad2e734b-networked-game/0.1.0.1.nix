{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "networked-game";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "emertens@gmail.com";
        author = "Eric Mertens";
        homepage = "";
        url = "";
        synopsis = "Networked-game support library";
        description = "";
        buildType = "Simple";
      };
      components = {
        networked-game = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.network
          ];
        };
      };
    }
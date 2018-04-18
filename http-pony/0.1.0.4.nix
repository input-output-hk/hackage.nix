{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-pony";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nfjinjing@gmail.com";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/http-pony";
        url = "";
        synopsis = "A type unsafe http library";
        description = "";
        buildType = "Simple";
      };
      components = {
        http-pony = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.pipes
            hsPkgs.pipes-network
            hsPkgs.pipes-safe
            hsPkgs.transformers
            hsPkgs.exceptions
          ];
        };
      };
    }
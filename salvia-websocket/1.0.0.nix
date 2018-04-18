{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "salvia-websocket";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sfvisser@cs.uu.nl";
        author = "Sebastiaan Visser";
        homepage = "";
        url = "";
        synopsis = "Websocket implementation for the Salvia Webserver.";
        description = "Websocket implementation for the Salvia Webserver.";
        buildType = "Simple";
      };
      components = {
        salvia-websocket = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.salvia
            hsPkgs.salvia-protocol
            hsPkgs.fclabels
            hsPkgs.monads-fd
            hsPkgs.stm
            hsPkgs.utf8-string
          ];
        };
      };
    }
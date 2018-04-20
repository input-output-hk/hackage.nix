{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      no-pgn = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "chesshs";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "arno@vanlumig.com";
        author = "Arno van Lumig";
        homepage = "http://arnovanlumig.com/chesshs.html";
        url = "";
        synopsis = "Simple library for validating chess moves and parsing PGN files";
        description = "With this library you can load chess boards from FEN and PGN notation and apply moves to the boards. Moves will only be allowed if they are valid under the normal chess rules.";
        buildType = "Simple";
      };
      components = {
        chesshs = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
          ] ++ pkgs.lib.optional (!_flags.no-pgn) hsPkgs.attoparsec;
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "fen2s";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
        author = "Joe Leslie-Hurd <joe@gilith.com>";
        homepage = "";
        url = "";
        synopsis = "Converting a chess position from FEN notation to text";
        description = "This package implements a simple utility to read in a chess position\ndescribed in FEN notation and print it using Unicode characters.";
        buildType = "Simple";
      };
      components = {
        fen2s = {
          depends  = [
            hsPkgs.base
            hsPkgs.opentheory-unicode
            hsPkgs.api-opentheory-unicode
          ];
        };
        exes = {
          fen2s = {
            depends  = [
              hsPkgs.base
              hsPkgs.opentheory-unicode
              hsPkgs.api-opentheory-unicode
            ];
          };
          fen2s-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.opentheory-unicode
              hsPkgs.api-opentheory-unicode
            ];
          };
        };
      };
    }
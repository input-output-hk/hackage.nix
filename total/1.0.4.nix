{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "total";
          version = "1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Exhaustive pattern matching using lenses, traversals, and prisms";
        description = "Use this library if you wish to hide your data type's internal\nrepresentation while still providing a way to exhaustively pattern match on\nyour type using exposed lenses, traversals, or prisms.";
        buildType = "Simple";
      };
      components = {
        total = {
          depends  = [
            hsPkgs.base
            hsPkgs.void
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gelatin-fruity";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Schell Scivally";
        maintainer = "schell@takt.com";
        author = "Schell Scivally";
        homepage = "https://github.com/schell/gelatin-fruity#readme";
        url = "";
        synopsis = "Gelatin's support for rendering TTF outlines, using FontyFruity.";
        description = "Gelatin's support for rendering TTF outlines, using FontyFruity.\nUsing FontyFruity gelatin can render smooth font geometry without\nfreetype.";
        buildType = "Simple";
      };
      components = {
        "gelatin-fruity" = {
          depends  = [
            hsPkgs.base
            hsPkgs.gelatin
            hsPkgs.FontyFruity
            hsPkgs.vector
            hsPkgs.linear
          ];
        };
      };
    }
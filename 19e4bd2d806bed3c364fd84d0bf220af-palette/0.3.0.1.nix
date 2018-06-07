{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "palette";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeffrey.rosenbluth@gmail.com";
        author = "Jeffrey Rosenbluth";
        homepage = "http://projects.haskell.org/diagrams";
        url = "";
        synopsis = "Utilities for choosing and creating color schemes.";
        description = "Sets of predefined colors and tools for choosing and\ncreating color schemes. Random colors.";
        buildType = "Simple";
      };
      components = {
        palette = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.colour
            hsPkgs.containers
            hsPkgs.MonadRandom
          ];
        };
      };
    }
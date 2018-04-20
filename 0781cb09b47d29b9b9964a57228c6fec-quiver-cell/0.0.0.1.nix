{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "quiver-cell";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015 Patryk Zadarnowski";
        maintainer = "Patryk Zadarnowski <pat@jantar.org>";
        author = "Patryk Zadarnowski";
        homepage = "https://github.com/zadarnowski/quiver-cell";
        url = "";
        synopsis = "Quiver combinators for cellular data processing";
        description = "This library provides combinators for Quiver-based streaming\nof cellular data, i.e., tabular data encoded as a stream of\noptionally-fragmented cell values.";
        buildType = "Simple";
      };
      components = {
        quiver-cell = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-cell
            hsPkgs.quiver
          ];
        };
      };
    }
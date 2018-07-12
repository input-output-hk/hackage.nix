{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "pipes-cellular";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015 Patryk Zadarnowski";
        maintainer = "Patryk Zadarnowski <pat@jantar.org>";
        author = "Patryk Zadarnowski";
        homepage = "https://github.com/zadarnowski/pipes-cellular";
        url = "";
        synopsis = "Pipes-based combinators for cellular data processing";
        description = "This library provides a number of miscellaneous utilities\nfor pipes-based processing of cellular data.";
        buildType = "Simple";
      };
      components = {
        "pipes-cellular" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-cell
            hsPkgs.pipes
          ];
        };
      };
    }
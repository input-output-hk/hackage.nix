{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "pipes-cellular-csv";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015 Patryk Zadarnowski";
        maintainer = "Patryk Zadarnowski <pat@jantar.org>";
        author = "Patryk Zadarnowski";
        homepage = "https://github.com/zadarnowski/pipes-cellular-csv";
        url = "";
        synopsis = "Efficient pipes-based cellular CSV codec";
        description = "This library provides an efficient pipes-based implementation\nof a cellular CSV codec designed for fast streaming of data\nwith guaranteed constant memory usage.";
        buildType = "Simple";
      };
      components = {
        "pipes-cellular-csv" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-cell
            hsPkgs.pipes
            hsPkgs.pipes-cellular
          ];
        };
      };
    }
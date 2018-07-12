{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "data-cell";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015 Patryk Zadarnowski";
        maintainer = "Patryk Zadarnowski <pat@jantar.org>";
        author = "Patryk Zadarnowski";
        homepage = "https://github.com/zadarnowski/data-cell";
        url = "";
        synopsis = "Generic cellular data representation library";
        description = "This library defines a trivial type used for streaming\nof tabular data using coinductive control structures\nsuch as pipes, conduit or iteratees.";
        buildType = "Simple";
      };
      components = {
        "data-cell" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
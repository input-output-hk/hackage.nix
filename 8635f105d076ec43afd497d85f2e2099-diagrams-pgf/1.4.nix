{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diagrams-pgf";
          version = "1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "c.chalmers@me.com";
        author = "Christopher Chalmers";
        homepage = "http://github.com/cchalmers/diagrams-pgf";
        url = "";
        synopsis = "PGF backend for diagrams drawing EDSL.";
        description = "This package provides a modular backend for rendering diagrams created\nwith the diagrams EDSL using the TeX library PGF.\n\nSupport for rendering LaTeX, ConTeXt and plain TeX files.";
        buildType = "Simple";
      };
      components = {
        "diagrams-pgf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-builder
            hsPkgs.containers
            hsPkgs.colour
            hsPkgs.diagrams-core
            hsPkgs.diagrams-lib
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.process
            hsPkgs.split
            hsPkgs.texrunner
            hsPkgs.time
            hsPkgs.JuicyPixels
            hsPkgs.vector
            hsPkgs.zlib
          ];
        };
      };
    }
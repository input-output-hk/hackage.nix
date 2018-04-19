{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "TBit";
          version = "0.4.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "danielsmw@gmail.com";
        author = "Matthew Daniels";
        homepage = "";
        url = "";
        synopsis = "Utilities for condensed matter physics tight binding calculations.";
        description = "TBit provides tools for parameterizing and computing condensed matter physics quantities based on tight-binding models. It provides utitilies for computing Chern numbers and Berry curvatures of electronic band structure, generating gnuplot-readable dispersion plots, and calculating assorted quantities such as orbital magnetization and Nernst conductivity.";
        buildType = "Simple";
      };
      components = {
        TBit = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hmatrix
            hsPkgs.mtl
            hsPkgs.parallel
            hsPkgs.deepseq
            hsPkgs.integration
            hsPkgs.numeric-tools
            hsPkgs.fgl
            hsPkgs.list-extras
            hsPkgs.free
          ];
        };
      };
    }
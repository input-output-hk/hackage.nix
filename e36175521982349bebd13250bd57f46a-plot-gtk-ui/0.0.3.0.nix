{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "plot-gtk-ui";
          version = "0.0.3.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "sumit.sahrawat.apm13@iitbhu.ac.in";
        author = "Sumit Sahrawat";
        homepage = "https://github.com/sumitsahrawat/plot-gtk-ui";
        url = "";
        synopsis = "A quick way to use Mathematica like Manipulation abilities";
        description = "A pre-built ui for plotting based on plot. Quicker to use than\nplot-gtk, but less configurable, and less versatile.\n\nOnly provides ability to plot mathematical functions. But, also\nallows dynamic plotting functionality similar to Mathematica.";
        buildType = "Simple";
      };
      components = {
        plot-gtk-ui = {
          depends  = [
            hsPkgs.base
            hsPkgs.colour
            hsPkgs.plot
            hsPkgs.gtk
            hsPkgs.cairo
            hsPkgs.hmatrix
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.fixed-vector
          ];
        };
      };
    }
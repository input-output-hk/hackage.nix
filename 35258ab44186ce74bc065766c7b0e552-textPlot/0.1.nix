{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "textPlot";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "will.t.murphy@gmail.com";
        author = "William Tennien Murphy";
        homepage = "";
        url = "";
        synopsis = "Graphs functions as lines of text";
        description = "Graphs standard, parametric, and polar functions and plots them into text files or prints them. One creates a standard, polar, or parametric plot with boundaries, dimensions and possible functions. One may add functions to any plot.";
        buildType = "Simple";
      };
      components = {
        "textPlot" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "textPlot";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "will.t.murphy@gmail.com";
        author = "William Tennien Murphy";
        homepage = "";
        url = "";
        synopsis = "Plot functions in text.";
        description = "Graph plots of y(x), parametric (x(t),y(t)),\nand polar r(phi) functions with ASCII text.";
        buildType = "Simple";
      };
      components = {
        textPlot = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }
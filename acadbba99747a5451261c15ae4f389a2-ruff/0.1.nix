{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ruff";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Claude Heiland-Allen";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "https://gitorious.org/ruff";
        url = "";
        synopsis = "relatively useful fractal functions";
        description = "A library for analysis and exploration of fractals.  This initial\nversion provides angled internal addresses, external ray tracing,\nand iterations for images of the Mandelbrot Set.";
        buildType = "Simple";
      };
      components = {
        ruff = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.wl-pprint-text
          ];
        };
      };
    }
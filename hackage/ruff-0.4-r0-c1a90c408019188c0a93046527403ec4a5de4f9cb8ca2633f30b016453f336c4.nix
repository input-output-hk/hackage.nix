{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ruff"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011,2015 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/ruff";
      url = "";
      synopsis = "relatively useful fractal functions";
      description = "A library for analysis and exploration of fractals, providing\nangled internal addresses, external ray tracing, nucleus and\nbond point finding, and iterations for images of the Mandelbrot\nSet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.safe)
          (hsPkgs.strict)
          (hsPkgs.Vec)
          ];
        };
      };
    }
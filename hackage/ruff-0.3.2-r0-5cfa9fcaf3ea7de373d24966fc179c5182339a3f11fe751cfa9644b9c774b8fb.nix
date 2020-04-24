{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ruff"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Claude Heiland-Allen";
      maintainer = "claudiusmaximus@goto10.org";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
          ];
        buildable = true;
        };
      };
    }
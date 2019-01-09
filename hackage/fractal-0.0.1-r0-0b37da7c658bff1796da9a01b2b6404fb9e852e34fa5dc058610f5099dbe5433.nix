{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "fractal"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "max.rabkin@gmail.com";
      author = "Max Rabkin";
      homepage = "";
      url = "";
      synopsis = "Draw Newton, Julia and Mandelbrot fractals";
      description = "Functions to generate fractals, with a command-line interface\nto render them as PGM files.";
      buildType = "Simple";
      };
    components = { exes = { "fractal" = { depends = [ (hsPkgs.base) ]; }; }; };
    }
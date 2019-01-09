{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mpfr = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "gruff-examples"; version = "0.4"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Mandelbrot Set examples using ruff and gruff";
      description = "Some example scripts, including a converter from old versions of gruff\nfile formats to the current file format.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gruff-convert" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.ruff)
            (hsPkgs.gruff)
            ];
          };
        "gruff-labels" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.gruff)
            (hsPkgs.ruff)
            ];
          };
        "gruff-octopus" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gruff)
            (hsPkgs.ruff)
            (hsPkgs.qd)
            (hsPkgs.qd-vec)
            (hsPkgs.Vec)
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs.hmpfr);
          };
        "gruff-fives" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gruff)
            (hsPkgs.ruff)
            (hsPkgs.qd)
            (hsPkgs.qd-vec)
            (hsPkgs.Vec)
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs.hmpfr);
          };
        "gruff-patterns" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gruff)
            (hsPkgs.ruff)
            (hsPkgs.qd)
            (hsPkgs.qd-vec)
            (hsPkgs.Vec)
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs.hmpfr);
          };
        "gruff-randoms" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gruff)
            (hsPkgs.ruff)
            (hsPkgs.qd)
            (hsPkgs.qd-vec)
            (hsPkgs.Vec)
            (hsPkgs.random)
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs.hmpfr);
          };
        "gruff-whn" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gruff)
            (hsPkgs.ruff)
            (hsPkgs.qd)
            (hsPkgs.qd-vec)
            (hsPkgs.Vec)
            (hsPkgs.data-memocombinators)
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs.hmpfr);
          };
        "gruff-zoom" = { depends = [ (hsPkgs.base) (hsPkgs.gruff) ]; };
        };
      };
    }
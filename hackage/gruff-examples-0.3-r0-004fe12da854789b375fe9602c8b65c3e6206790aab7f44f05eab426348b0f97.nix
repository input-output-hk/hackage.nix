{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { mpfr = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gruff-examples";
        version = "0.3";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Mandelbrot Set examples using ruff and gruff";
      description = "Some example animation scripts.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gruff-labels" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.gruff)
            (hsPkgs.ruff)
          ];
        };
        "gruff-octopus" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gruff)
            (hsPkgs.ruff)
            (hsPkgs.qd)
            (hsPkgs.qd-vec)
            (hsPkgs.Vec)
          ] ++ pkgs.lib.optional (flags.mpfr) (hsPkgs.hmpfr);
        };
        "gruff-patterns" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gruff)
            (hsPkgs.ruff)
            (hsPkgs.qd)
            (hsPkgs.qd-vec)
            (hsPkgs.Vec)
          ] ++ pkgs.lib.optional (flags.mpfr) (hsPkgs.hmpfr);
        };
        "gruff-randoms" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gruff)
            (hsPkgs.ruff)
            (hsPkgs.qd)
            (hsPkgs.qd-vec)
            (hsPkgs.Vec)
            (hsPkgs.random)
          ] ++ pkgs.lib.optional (flags.mpfr) (hsPkgs.hmpfr);
        };
        "gruff-whn" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gruff)
            (hsPkgs.ruff)
            (hsPkgs.qd)
            (hsPkgs.qd-vec)
            (hsPkgs.Vec)
            (hsPkgs.data-memocombinators)
          ] ++ pkgs.lib.optional (flags.mpfr) (hsPkgs.hmpfr);
        };
      };
    };
  }
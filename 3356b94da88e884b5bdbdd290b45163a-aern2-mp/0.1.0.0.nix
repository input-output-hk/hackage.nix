{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      mpfr = true;
      mpfrrounded = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "aern2-mp";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2017 Michal Konecny";
        maintainer = "Michal Konecny <mikkonecny@gmail.com>";
        author = "Michal Konecny";
        homepage = "https://github.com/michalkonecny/aern2/aern2-mp";
        url = "";
        synopsis = "Multi-precision floats via MPFR";
        description = "Arbitrary-precision dyadic numbers and interval arithmetic, via the types:\n\n* Dyadic:  variable-precision floats with exact ring operations\n\n* MPBall: float ± error bound with field & elementary (interval-like) operations\n\nBy default, using hmpfr when compiling with ghc >=7.10.  Older versions of ghc are no longer tested.\n\nSet flag MPFRRounded to bind MPFR not via hmpfr but via a tweaked version of package\nrounded:\n\n* https://github.com/michalkonecny/rounded\n\nThis backend is considerably faster than hmpfr.\nIt is likely to become the default in future.\n\nThere is a plan to add an Integer-only backend so that this library can\nbe used without MPFR.";
        buildType = "Simple";
      };
      components = {
        aern2-mp = {
          depends  = [
            hsPkgs.base
            hsPkgs.integer-logarithms
            hsPkgs.convertible
            hsPkgs.regex-tdfa
            hsPkgs.hspec
            hsPkgs.QuickCheck
            hsPkgs.lens
            hsPkgs.template-haskell
            hsPkgs.mixed-types-num
          ] ++ (if _flags.mpfr && (compiler.isGhc && compiler.version.ge "7.10")
            then if _flags.mpfrrounded
              then [ hsPkgs.rounded ]
              else [
                hsPkgs.hmpfr
                hsPkgs.integer-gmp
              ]
            else [
              hsPkgs.haskell-mpfr
              hsPkgs.integer-gmp
            ]);
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.aern2-mp
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }
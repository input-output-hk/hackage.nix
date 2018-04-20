{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "intervals";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ekmett@gmail.com";
        author = "Edward Kmett";
        homepage = "http://github.com/ekmett/intervals";
        url = "";
        synopsis = "Interval Arithmetic";
        description = "A 'Numeric.Interval.Interval' is a closed, convex set of floating point values.\n\nWe do not control the rounding mode of the end points of the interval when\nusing floating point arithmetic, so be aware that in order to get precise\ncontainment of the result, you will need to use an underlying type with\nboth lower and upper bounds like 'CReal'";
        buildType = "Custom";
      };
      components = {
        intervals = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.distributive
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          doctests = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }
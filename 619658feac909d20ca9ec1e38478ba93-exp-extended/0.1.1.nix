{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exp-extended";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015,2016 Claude Heiland-Allen";
        maintainer = "claude@mathr.co.uk";
        author = "Claude Heiland-Allen";
        homepage = "http://code.mathr.co.uk/exp-extended";
        url = "";
        synopsis = "floating point with extended exponent range";
        description = "A small library to extend floating point types with a larger\nexponent, so that you can represent really huge or really tiny\nnumbers without overflow to infinity or underflow to zero.\n\n@\n> unExpExtended . log . exp .          expExtended' \$ 1000\n1000.0\n>                 log . exp                         \$ 1000\nInfinity\n> unExpExtended . log . exp . negate . expExtended' \$ 1000\n-1000.0\n>                 log . exp . negate                \$ 1000\n-Infinity\n@\n\nVersion 0.1.1 is a bugfix release, correctly handling\nexactly-zero values in additions and comparisons.";
        buildType = "Simple";
      };
      components = {
        exp-extended = {
          depends  = [
            hsPkgs.base
            hsPkgs.compensated
            hsPkgs.log-domain
          ];
        };
      };
    }
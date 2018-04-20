{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quadratic-irrational";
          version = "0.0.3";
        };
        license = "MIT";
        copyright = "Copyright © 2014 Johan Kiviniemi";
        maintainer = "Johan Kiviniemi <devel@johan.kiviniemi.name>";
        author = "Johan Kiviniemi <devel@johan.kiviniemi.name>";
        homepage = "https://github.com/ion1/quadratic-irrational";
        url = "";
        synopsis = "An implementation of quadratic irrationals";
        description = "An implementation of\n<http://en.wikipedia.org/wiki/Quadratic_irrational quadratic irrationals>\nwith support for conversion from and to\n<http://en.wikipedia.org/wiki/Periodic_continued_fraction periodic continued fractions>.\n\nA quadratic irrational is a number that can be expressed in the form\n\n> (a + b √c) / d\n\nwhere @a@, @b@ and @d@ are integers and @c@ is a square-free natural number.\n\nSome examples of such numbers are\n\n* @7/2@,\n\n* @√2@,\n\n* @(1 + √5)\\/2@\n(<http://en.wikipedia.org/wiki/Golden_ratio the golden ratio>),\n\n* solutions to some quadratic equations – the\n<http://en.wikipedia.org/wiki/Quadratic_formula quadratic formula> has a\nfamiliar shape.\n\nA continued fraction is a number that can be expressed in the form\n\n> a + 1/(b + 1/(c + 1/(d + 1/(e + …))))\n\nalternatively expressed using the notation\n\n> [a; b, c, d, e, …]\n\nwhere @a@ is an integer and @b@, @c@, @d@, @e@, … are positive integers.\n\nEvery finite continued fraction represents a rational number and every\ninfinite, periodic continued fraction represents a quadratic irrational.\n\n> 3.5      = [3; 2]\n> (1+√5)/2 = [1; 1, 1, 1, …]\n> √2       = [1; 2, 2, 2, …]";
        buildType = "Simple";
      };
      components = {
        quadratic-irrational = {
          depends  = [
            hsPkgs.base
            hsPkgs.arithmoi
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
        tests = {
          tasty-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.quadratic-irrational
              hsPkgs.numbers
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.numbers
            ];
          };
        };
      };
    }
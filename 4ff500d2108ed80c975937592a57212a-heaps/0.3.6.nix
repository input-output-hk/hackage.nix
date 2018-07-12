{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "heaps";
          version = "0.3.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/heaps/";
        url = "";
        synopsis = "Asymptotically optimal Brodal/Okasaki heaps.";
        description = "Asymptotically optimal Brodal\\/Okasaki bootstrapped skew-binomial heaps from the paper <http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.48.973 \"Optimal Purely Functional Priority Queues\">, extended with a 'Foldable' interface.";
        buildType = "Custom";
      };
      components = {
        "heaps" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.heaps
            ];
          };
        };
      };
    }
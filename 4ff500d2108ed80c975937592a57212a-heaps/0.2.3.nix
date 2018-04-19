{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "heaps";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/heaps/";
        url = "";
        synopsis = "Asymptotically optimal Brodal/Okasaki heaps.";
        description = "Asymptotically optimal Brodal/Okasaki bootstrapped skew-binomial heaps from the paper \\\"Optimal Purely Functional Priority Queues\\\", extended with a Foldable interface.";
        buildType = "Simple";
      };
      components = {
        heaps = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }
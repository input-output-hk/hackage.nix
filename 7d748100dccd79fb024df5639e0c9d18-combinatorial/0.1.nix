{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "combinatorial";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://hub.darcs.net/thielema/combinatorial/";
        url = "";
        synopsis = "Count, enumerate, rank and unrank combinatorial objects";
        description = "Counting, enumerating, ranking and unranking of combinatorial objects.\nWell-known and less well-known basic combinatoric problems and examples.\n\nThe functions are not implemented in obviously stupid ways,\nbut they are also not optimized to the maximum extent.\nThe package is plain Haskell 98.\n\nSee also:\n\n* @exact-combinatorics@:\nEfficient computations of large combinatoric numbers.\n\n* @combinat@:\nLibrary for a similar purpose\nwith a different structure and selection of problems.";
        buildType = "Simple";
      };
      components = {
        "combinatorial" = {
          depends  = [
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.transformers
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
        tests = {
          "combinatorial-test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.transformers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "combinat";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Balazs Komuves";
        maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
        author = "Balazs Komuves";
        homepage = "";
        url = "";
        synopsis = "Generation of various combinatorial objects.";
        description = "A collection of functions to generate combinatorial\nobjects like partitions, combinations, permutations,\nYoung tableaux, various trees, etc.";
        buildType = "Simple";
      };
      components = {
        "combinat" = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
            ]
            else [ hsPkgs.base ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "disjoint-set";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<maxwellsayles@gmail.com>, <myles.maxfield@gmail.com>";
        author = "Maxwell Sayles, Myles Maxfield";
        homepage = "https://github.com/maxwellsayles/disjoint-set";
        url = "";
        synopsis = "Persistent disjoint-sets, a.k.a union-find.";
        description = "This is a persistent data structure for disjoint sets.\n\nThe algorithm is described in \"Introduction to\nAlgorithms\" by Cormen, et al. The implementation here\nuses both union by rank and path compression. We\nincur an O(logn) overhead because of the use of\npersistent maps.\n\nData.IntDisjointSet is as strict as possible.";
        buildType = "Simple";
      };
      components = {
        disjoint-set = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crdt";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Yuriy Syrovetskiy, Nikolay Loginov";
        maintainer = "Yuriy Syrovetskiy <cblp@cblp.su>";
        author = "";
        homepage = "https://github.com/cblp/crdt#readme";
        url = "";
        synopsis = "Conflict-free replicated data types";
        description = "Definitions of CmRDT and CvRDT. Implementations for some classic CRDTs.";
        buildType = "Simple";
      };
      components = {
        crdt = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.enummapset
            hsPkgs.lattices
            hsPkgs.microlens
            hsPkgs.microlens-ghc
            hsPkgs.microlens-mtl
            hsPkgs.mtl
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.crdt
            ];
          };
        };
      };
    }
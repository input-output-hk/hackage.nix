{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crdt";
          version = "0.5";
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
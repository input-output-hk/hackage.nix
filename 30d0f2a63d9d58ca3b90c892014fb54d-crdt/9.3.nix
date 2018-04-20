{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crdt";
          version = "9.3";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Yuriy Syrovetskiy, Nikolay Loginov;\n2018 Yuriy Syrovetskiy";
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
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.Diff
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.safe
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.vector
            hsPkgs.network-info
          ] ++ pkgs.lib.optionals (!compiler.isGhc) [
            hsPkgs.fail
            hsPkgs.semigroups
            hsPkgs.transformers
          ];
        };
      };
    }
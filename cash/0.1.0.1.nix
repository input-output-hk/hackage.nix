{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cash";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Brown";
        author = "Chris Brown, Hans-Wolfgang Loidl, Jost Berthold, Kevin Hammond";
        homepage = "http://www.cs.st-andrews.ac.uk/~hwloidl/SCIEnce/SymGrid-Par/CASH/";
        url = "";
        synopsis = "the Computer Algebra SHell";
        description = "A Computer Algebra Shell for Haskell. CASH connects via SCSCP and OpenMATH to Computer Algebra systems with SCSCP (such as GAP). CASH also exposes an OpenMath and SCSCP marshalling library.";
        buildType = "Simple";
      };
      components = {
        cash = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.parallel
            hsPkgs.HaXml
            hsPkgs.pretty
            hsPkgs.haskell98
            hsPkgs.deepseq
          ];
        };
      };
    }
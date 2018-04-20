{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "orc";
          version = "1.2.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2010, Galois, Inc.";
        maintainer = "John Launchbury, Trevor Elliott";
        author = "John Launchbury, Trevor Elliott";
        homepage = "";
        url = "";
        synopsis = "Orchestration-style co-ordination EDSL";
        description = "Provides an EDSL with Orc primitives.";
        buildType = "Simple";
      };
      components = {
        orc = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.process
            hsPkgs.mtl
            hsPkgs.monadIO
            hsPkgs.deepseq
          ];
        };
        exes = {
          orc = {
            depends  = [
              hsPkgs.deepseq
              hsPkgs.random
            ];
          };
        };
      };
    }
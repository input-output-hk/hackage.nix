{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16.0.3";
        identifier = {
          name = "vcache";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 by David Barbour";
        maintainer = "dmbarbour@gmail.com";
        author = "David Barbour";
        homepage = "http://github.com/dmbarbour/haskell-vcache";
        url = "";
        synopsis = "large, persistent, memcached values and structure sharing for Haskell";
        description = "VCache provides a nearly-transparent persistent memory for Haskell\nwith transactional variables, persistent roots, and large structured\nvalues. The virtual space is a memory-mapped file via LMDB, with\nstructure sharing and incremental GC.\n\nVCache is very similar to packages acid-state, perdure, and TCache.\nVCache is intended as an acid-state alternative, offering flexibility\nto model fine-grained variables or extremely large values.";
        buildType = "Simple";
      };
      components = {
        vcache = {
          depends  = [
            hsPkgs.base
            hsPkgs.direct-murmur-hash
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.stm
            hsPkgs.lmdb
            hsPkgs.filelock
            hsPkgs.easy-file
            hsPkgs.random
          ];
        };
      };
    }
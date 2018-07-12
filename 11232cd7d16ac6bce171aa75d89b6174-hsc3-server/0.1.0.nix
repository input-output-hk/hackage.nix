{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsc3-server";
          version = "0.1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) Stefan Kersten 2008-2011";
        maintainer = "Stefan Kersten";
        author = "Stefan Kersten";
        homepage = "http://space.k-hornz.de/software/hsc3-server";
        url = "";
        synopsis = "SuperCollider server resource management and synchronization.";
        description = "This library provides abstractions for managing SuperCollider server resources like node, buffer and bus ids and synchronization primitives.";
        buildType = "Simple";
      };
      components = {
        "hsc3-server" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bitset
            hsPkgs.data-accessor
            hsPkgs.deepseq
            hsPkgs.failure
            hsPkgs.hosc
            hsPkgs.hsc3
            hsPkgs.hsc3-process
            hsPkgs.mtl
            hsPkgs.strict-concurrency
            hsPkgs.transformers
          ];
        };
      };
    }
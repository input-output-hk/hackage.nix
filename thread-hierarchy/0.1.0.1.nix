{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "thread-hierarchy";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Naoto Shimazaki";
        maintainer = "Naoto.Shimazaki@gmail.com";
        author = "Naoto Shimazaki";
        homepage = "https://github.com/nshimaza/thread-hierarchy#readme";
        url = "";
        synopsis = "Simple Haskel thread management in hierarchical manner";
        description = "Threads created by newChild guarantee automatic cleanup\non its exit regardless normal exit or cancellation by\nasynchronous exception.";
        buildType = "Simple";
      };
      components = {
        thread-hierarchy = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.transformers-base
          ];
        };
        tests = {
          thread-hierarchy-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.thread-hierarchy
            ];
          };
        };
      };
    }
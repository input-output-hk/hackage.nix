{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ctrie";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2013 Michael Schröder";
        maintainer = "mcschroeder@gmail.com";
        author = "Michael Schröder";
        homepage = "";
        url = "";
        synopsis = "Non-blocking concurrent map";
        description = "A non-blocking concurrent map implementation based on\n/lock-free concurrent hash tries/ (aka /Ctries/).";
        buildType = "Simple";
      };
      components = {
        ctrie = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.primitive
          ];
        };
        tests = {
          map-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.ctrie
            ];
          };
        };
        benchmarks = {
          sequential = {
            depends  = [
              hsPkgs.base
              hsPkgs.hashable
              hsPkgs.random
              hsPkgs.transformers
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.ctrie
            ];
          };
          concurrent = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.hashable
              hsPkgs.random
              hsPkgs.random-shuffle
              hsPkgs.transformers
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.ctrie
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gore-and-ash-async";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Anton Gushcha";
        maintainer = "ncrashed@gmail.com";
        author = "Anton Gushcha";
        homepage = "https://github.com/TeaspotStudio/gore-and-ash-async#readme";
        url = "";
        synopsis = "Core module for Gore&Ash engine that embeds async IO actions into game loop.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        gore-and-ash-async = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.gore-and-ash
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          gore-and-ash-async-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.gore-and-ash
              hsPkgs.gore-and-ash-async
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.deepseq
              hsPkgs.exceptions
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.containers
            ];
          };
        };
      };
    }
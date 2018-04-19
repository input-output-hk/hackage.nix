{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rpc-framework";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mmirman@andrew.cmu.edu";
        author = "Matthew Mirman";
        homepage = "http://github.com/mmirman/rpc-framework";
        url = "";
        synopsis = "a remote procedure call framework";
        description = "A library and framework for making remote procedure calls in haskell easy and typesafe.\n\nSee <http://github.com/mmirman/rpc-framework> for more information.";
        buildType = "Simple";
      };
      components = {
        rpc-framework = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.network
          ];
        };
        exes = {
          rpc-test = {
            depends  = [
              hsPkgs.rpc-framework
              hsPkgs.base
            ];
          };
        };
      };
    }
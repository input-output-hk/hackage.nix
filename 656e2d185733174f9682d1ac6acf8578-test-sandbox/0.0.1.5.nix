{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "test-sandbox";
          version = "0.0.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Benjamin Surma <benjamin.surma@gree.net>";
        author = "Benjamin Surma <benjamin.surma@gree.net>";
        homepage = "http://gree.github.io/haskell-test-sandbox/";
        url = "";
        synopsis = "Sandbox for system tests";
        description = "Allows starting and stopping previously registered programs in a sandboxed environment.\n\nThis package provides functions to easily communicate with the aforementioned processes\nvia TCP or standard input/output.\n\nUsage examples can be found on the github page:\n<http://gree.github.io/haskell-test-sandbox/>\n\nExtensive documentation is available in the source code itself.";
        buildType = "Simple";
      };
      components = {
        "test-sandbox" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.process
            hsPkgs.random
            hsPkgs.random-shuffle
            hsPkgs.temporary
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unix
          ];
        };
      };
    }
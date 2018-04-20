{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "jupyter";
          version = "0.9.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.gibiansky@gmail.com";
        author = "Andrew Gibiansky";
        homepage = "http://github.com/gibiansky/haskell-jupyter";
        url = "";
        synopsis = "A library for creating and using Jupyter kernels.";
        description = "An implementation of the Jupyter messaging protocol, used to implement Jupyter kernels in Haskell or communicate with existing Jupyter kernels via the messaging protocol.";
        buildType = "Simple";
      };
      components = {
        jupyter = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.temporary
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.uuid
            hsPkgs.zeromq4-haskell
            hsPkgs.SHA
            hsPkgs.monad-control
            hsPkgs.async
            hsPkgs.exceptions
          ];
        };
        exes = {
          kernel-basic = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.jupyter
            ];
          };
          kernel-calculator = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.jupyter
            ];
          };
          kernel-stdin = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.jupyter
            ];
          };
          client-kernel-info = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.transformers
              hsPkgs.jupyter
            ];
          };
        };
        tests = {
          test-jupyter = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.extra
              hsPkgs.directory
              hsPkgs.silently
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.zeromq4-haskell
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.exceptions
              hsPkgs.async
              hsPkgs.unordered-containers
              hsPkgs.jupyter
            ];
          };
        };
      };
    }
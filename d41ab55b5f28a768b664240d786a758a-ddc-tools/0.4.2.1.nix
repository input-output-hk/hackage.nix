{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ddc-tools";
          version = "0.4.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Disciplined Disciple Compiler Strike Force";
        homepage = "http://disciple.ouroborus.net";
        url = "";
        synopsis = "Disciplined Disciple Compiler command line tools.";
        description = "Disciplined Disciple Compiler command line tools.";
        buildType = "Custom";
      };
      components = {
        exes = {
          "ddc-check" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ddc-core
            ];
          };
          "ddc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.ddc-base
              hsPkgs.ddc-core
              hsPkgs.ddc-core-simpl
              hsPkgs.ddc-core-salt
              hsPkgs.ddc-core-llvm
              hsPkgs.ddc-core-tetra
              hsPkgs.ddc-code
              hsPkgs.ddc-build
              hsPkgs.ddc-driver
            ];
          };
          "ddci-core" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.ddc-base
              hsPkgs.ddc-core
              hsPkgs.ddc-core-simpl
              hsPkgs.ddc-core-salt
              hsPkgs.ddc-core-llvm
              hsPkgs.ddc-core-flow
              hsPkgs.ddc-core-tetra
              hsPkgs.ddc-code
              hsPkgs.ddc-build
              hsPkgs.ddc-driver
            ];
          };
          "ddci-tetra" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.ddc-base
              hsPkgs.ddc-core
              hsPkgs.ddc-core-simpl
              hsPkgs.ddc-core-salt
              hsPkgs.ddc-core-llvm
              hsPkgs.ddc-core-flow
              hsPkgs.ddc-core-tetra
              hsPkgs.ddc-source-tetra
              hsPkgs.ddc-code
              hsPkgs.ddc-build
              hsPkgs.ddc-driver
            ];
          };
        };
      };
    }
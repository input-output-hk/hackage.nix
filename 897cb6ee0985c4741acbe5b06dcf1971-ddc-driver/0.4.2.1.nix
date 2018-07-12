{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ddc-driver";
          version = "0.4.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Disciplined Disciple Compiler Strike Force";
        homepage = "http://disciple.ouroborus.net";
        url = "";
        synopsis = "Disciplined Disciple Compiler top-level driver.";
        description = "This defines the top-level commands supported by the compiler,\nsuch as @-make@ and @-compile@.";
        buildType = "Simple";
      };
      components = {
        "ddc-driver" = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.ddc-base
            hsPkgs.ddc-core
            hsPkgs.ddc-core-simpl
            hsPkgs.ddc-core-salt
            hsPkgs.ddc-core-llvm
            hsPkgs.ddc-core-flow
            hsPkgs.ddc-core-tetra
            hsPkgs.ddc-source-tetra
            hsPkgs.ddc-build
          ];
        };
      };
    }
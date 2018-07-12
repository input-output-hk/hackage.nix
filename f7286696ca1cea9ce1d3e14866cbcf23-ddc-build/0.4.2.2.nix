{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ddc-build";
          version = "0.4.2.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Disciplined Disciple Compiler Strike Force";
        homepage = "http://disciple.ouroborus.net";
        url = "";
        synopsis = "Disciplined Disciple Compiler build framework.";
        description = "Disciplined Disciple Compiler build framework.";
        buildType = "Simple";
      };
      components = {
        "ddc-build" = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.ddc-base
            hsPkgs.ddc-core
            hsPkgs.ddc-core-simpl
            hsPkgs.ddc-core-salt
            hsPkgs.ddc-core-llvm
            hsPkgs.ddc-core-flow
            hsPkgs.ddc-core-tetra
            hsPkgs.ddc-core-babel
            hsPkgs.ddc-source-tetra
          ];
        };
      };
    }
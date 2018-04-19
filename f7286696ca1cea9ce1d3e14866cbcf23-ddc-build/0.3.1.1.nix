{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ddc-build";
          version = "0.3.1.1";
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
        ddc-build = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.mtl
            hsPkgs.ddc-base
            hsPkgs.ddc-core
            hsPkgs.ddc-core-eval
            hsPkgs.ddc-core-simpl
            hsPkgs.ddc-core-salt
            hsPkgs.ddc-core-llvm
          ];
        };
      };
    }
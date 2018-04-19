{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ddc-source-tetra";
          version = "0.4.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Disciplined Disciple Compiler Strike Force";
        homepage = "http://disciple.ouroborus.net";
        url = "";
        synopsis = "Disciplined Disciple Compiler source language.";
        description = "Disciplined Disciple Compiler Tetra source language.\nDisciple Tetra is the main source language of DDC.\nThe word Tetra refers to the four base kinds:\n'Data', 'Region', 'Effect' and 'Witness'.";
        buildType = "Simple";
      };
      components = {
        ddc-source-tetra = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.ddc-base
            hsPkgs.ddc-core
            hsPkgs.ddc-core-salt
            hsPkgs.ddc-core-tetra
          ];
        };
      };
    }
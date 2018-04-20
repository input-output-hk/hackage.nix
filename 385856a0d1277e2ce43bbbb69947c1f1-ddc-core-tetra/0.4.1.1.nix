{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ddc-core-tetra";
          version = "0.4.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Disciplined Disciple Compiler Strike Force";
        homepage = "http://disciple.ouroborus.net";
        url = "";
        synopsis = "Disciplined Disciple Compiler intermediate language.";
        description = "Disciplined Disciple Compiler intermediate language\nwith internalized effect judgement.";
        buildType = "Simple";
      };
      components = {
        ddc-core-tetra = {
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
            hsPkgs.ddc-core-simpl
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ddc-core-simpl";
          version = "0.2.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Disciplined Disciple Compiler Strike Force";
        homepage = "http://disciple.ouroborus.net";
        url = "";
        synopsis = "Disciple Core language simplifying code transformations.";
        description = "Disciple Core language simplifying code transformations.";
        buildType = "Simple";
      };
      components = {
        ddc-core-simpl = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.ddc-base
            hsPkgs.ddc-core
          ];
        };
      };
    }
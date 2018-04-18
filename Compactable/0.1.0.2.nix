{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "compactable";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fresheyeball@gmail.com";
        author = "Isaac Shapira";
        homepage = "";
        url = "";
        synopsis = "A generalization for containers that can be stripped of Nothings.";
        description = "Sometimes you have a collection of Maybes,\nand you want to extract the values. Actually that happens a whole lot.";
        buildType = "Simple";
      };
      components = {
        compactable = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
      };
    }
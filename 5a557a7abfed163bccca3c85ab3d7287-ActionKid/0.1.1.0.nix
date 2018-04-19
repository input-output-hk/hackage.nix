{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ActionKid";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bluemangroupie@gmail.com";
        author = "Aditya Bhargava";
        homepage = "https://github.com/egonSchiele/actionkid";
        url = "";
        synopsis = "An easy-to-use video game framework for Haskell.";
        description = "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/actionkid";
        buildType = "Simple";
      };
      components = {
        ActionKid = {
          depends  = [
            hsPkgs.base
            hsPkgs.gloss
            hsPkgs.StateVar
            hsPkgs.lens
            hsPkgs.gloss-juicy
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.OpenGL
          ];
        };
        exes = {
          actionkid = {
            depends  = [
              hsPkgs.base
              hsPkgs.gloss
              hsPkgs.StateVar
              hsPkgs.lens
              hsPkgs.gloss-juicy
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.containers
              hsPkgs.OpenGL
            ];
          };
        };
        tests = {
          test-actionkid = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.ActionKid
            ];
          };
        };
      };
    }
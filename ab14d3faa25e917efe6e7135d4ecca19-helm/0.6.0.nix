{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "helm";
          version = "0.6.0";
        };
        license = "MIT";
        copyright = "(c) 2013-2014, Zack Corr";
        maintainer = "Zack Corr <zack@z0w0.me>";
        author = "Zack Corr";
        homepage = "http://github.com/switchface/helm";
        url = "";
        synopsis = "A functionally reactive game engine.";
        description = "A functionally reactive game engine, with headgear to protect you\nfrom the headache of game development provided.";
        buildType = "Simple";
      };
      components = {
        "helm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.pango
            hsPkgs.containers
            hsPkgs.elerea
            hsPkgs.filepath
            hsPkgs.sdl2
            hsPkgs.random
            hsPkgs.mtl
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") hsPkgs.ghc-prim;
        };
        tests = {
          "helm-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.elerea
              hsPkgs.sdl2
            ];
          };
        };
      };
    }
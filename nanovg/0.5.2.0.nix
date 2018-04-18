{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nanovg";
          version = "0.5.2.0";
        };
        license = "ISC";
        copyright = "2016 Moritz Kiefer";
        maintainer = "moritz.kiefer@purelyfunctional.org";
        author = "Moritz Kiefer";
        homepage = "https://github.com/cocreature/nanovg-hs";
        url = "";
        synopsis = "Haskell bindings for nanovg";
        description = "Raw bindings to the OpenGL vector graphics library NanoVG";
        buildType = "Simple";
      };
      components = {
        nanovg = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.vector
          ];
          libs = optionals (!system.isOsx) [
            pkgs.GLU
            pkgs.GL
            pkgs.m
            pkgs.GLEW
          ];
          frameworks = pkgs.lib.optional system.isOsx pkgs.OpenGL;
        };
        exes = {
          example00 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.gl
              hsPkgs.GLFW-b
              hsPkgs.monad-loops
              hsPkgs.nanovg
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.vector
            ];
          };
        };
        tests = {
          nanovg-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.inline-c
              hsPkgs.nanovg
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }
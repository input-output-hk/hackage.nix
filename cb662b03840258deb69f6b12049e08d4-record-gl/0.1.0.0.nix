{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "record-gl";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Original work copyright (C) 2013 Anthony Cowley, modifications copyright (C) 2015 Sebastián Méndez";
        maintainer = "sebas.chinoir@gmail.com";
        author = "Sebastián Méndez";
        homepage = "";
        url = "";
        synopsis = "Utilities for working with OpenGL's GLSL shading language and Nikita Volkov's \"Record\"s.";
        description = "Using Nikita Volkov's \"Record\" records\nto carry GLSL uniform parameters and vertex data enables\nlibrary code to reflect over the types of the data to\nfacilitate interaction between Haskell and GLSL.";
        buildType = "Simple";
      };
      components = {
        record-gl = {
          depends  = [
            hsPkgs.GLUtil
            hsPkgs.OpenGL
            hsPkgs.base
            hsPkgs.base-prelude
            hsPkgs.containers
            hsPkgs.linear
            hsPkgs.record
            hsPkgs.tagged
            hsPkgs.template-haskell
            hsPkgs.vector
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.linear
              hsPkgs.record
              hsPkgs.record-gl
              hsPkgs.OpenGL
              hsPkgs.tagged
            ];
          };
        };
      };
    }
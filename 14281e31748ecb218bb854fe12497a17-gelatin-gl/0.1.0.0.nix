{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gelatin-gl";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "schell.scivally@synapsegroup.com";
        author = "Schell Scivally";
        homepage = "https://github.com/schell/gelatin/gelatin-gl";
        url = "";
        synopsis = "OpenGL rendering routines for the gelatin-picture graphics\nEDSL.";
        description = "This package provides most of a backend to\ngelatin-picture, a DSL for decribing two dimensional\npictures.";
        buildType = "Simple";
      };
      components = {
        gelatin-gl = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.gelatin
            hsPkgs.gelatin-shaders
            hsPkgs.linear
            hsPkgs.gl
            hsPkgs.JuicyPixels
            hsPkgs.vector
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.either
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.template-haskell
          ];
        };
        exes = {
          gelatin-gl-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.gelatin
              hsPkgs.gelatin-gl
              hsPkgs.linear
              hsPkgs.lens
              hsPkgs.vector
              hsPkgs.mtl
            ];
          };
        };
      };
    }
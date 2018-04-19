{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      pedantic = true;
      optimise = false;
      profile = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "WaveFront";
          version = "0.5.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jonatanhsundqvist@gmail.com";
        author = "Jonatan H Sundqvist";
        homepage = "";
        url = "";
        synopsis = "Parsers and utilities for the OBJ WaveFront 3D model format";
        description = "";
        buildType = "Simple";
      };
      components = {
        WaveFront = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.either
            hsPkgs.transformers
            hsPkgs.linear
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.attoparsec
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.QuickCheck
            hsPkgs.Cartesian
          ];
        };
      };
    }
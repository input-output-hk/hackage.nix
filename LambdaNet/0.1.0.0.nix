{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "LambdaNet";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2014";
        maintainer = "Joseph Barrow <jdb7hw@virginia.edu>";
        author = "Brent Baumgartner, Alex Thomas, Harang Ju, Joseph Barrow";
        homepage = "";
        url = "";
        synopsis = "A configurable and extensible neural network library";
        description = "LambdaNet is an artificial neural network library that allows\nusers to compose their own networks from function primitives.";
        buildType = "Simple";
      };
      components = {
        LambdaNet = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
            hsPkgs.random
            hsPkgs.random-shuffle
            hsPkgs.split
            hsPkgs.binary
            hsPkgs.bytestring
          ];
        };
      };
    }
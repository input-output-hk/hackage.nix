{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "JuicyPixels-blp";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2018 Anton Gushcha";
        maintainer = "ncrashed@gmail.com";
        author = "Anton Gushcha";
        homepage = "http://github.com/NCrashed/JuicyPixels-blp#readme";
        url = "";
        synopsis = "BLP format decoder/encoder over JuicyPixels library";
        description = "The library provides decoding/encoding functions for BLP1 texture format of Warcraft III game.\nThe result is represented in types of [JuicyPixels](http://hackage.haskell.org/package/JuicyPixels) library.\nPlease see README.md for detailed description.";
        buildType = "Simple";
      };
      components = {
        JuicyPixels-blp = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.JuicyPixels
            hsPkgs.text-show
            hsPkgs.vector
          ];
        };
        exes = {
          blp2any = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.JuicyPixels
              hsPkgs.JuicyPixels-blp
              hsPkgs.optparse-simple
              hsPkgs.text-show
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-codec";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/monad-codec";
        url = "";
        synopsis = "Monadic conversion between complex data structures and unique integers";
        description = "The library provides functions for encoding and decoding complex data\nstructures with unique integer numbers.  The codec structure can be\nexplicitly defined which distinguishes this package from a monad-atom\nlibrary.";
        buildType = "Simple";
      };
      components = {
        monad-codec = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.mtl
          ];
        };
      };
    }
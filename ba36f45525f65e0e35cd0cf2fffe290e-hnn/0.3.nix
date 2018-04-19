{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hnn";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2016 Alp Mestanogullari, Gatlin Johnson";
        maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
        author = "Alp Mestanogullari <alpmestan@gmail.com>, Gatlin Johnson <rokenrol@gmail.com>";
        homepage = "http://github.com/alpmestan/hnn";
        url = "";
        synopsis = "A reasonably fast and simple neural network library";
        description = "\nA neural network library implemented purely in Haskell, relying on the\nhmatrix library.\n\nThis library provides a straight and simple feed-forward neural networks implementation which\nis way better than the one in hnn-0.1, in all aspects.\n\nYou can find a mini-tutorial in @AI.HNN.FF.Network@.";
        buildType = "Simple";
      };
      components = {
        hnn = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.mwc-random
            hsPkgs.hmatrix
            hsPkgs.random
            hsPkgs.vector-binary-instances
            hsPkgs.binary
            hsPkgs.zlib
            hsPkgs.bytestring
          ];
        };
      };
    }
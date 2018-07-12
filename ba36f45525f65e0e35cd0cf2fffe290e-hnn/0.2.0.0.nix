{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hnn";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2014 Alp Mestanogullari, Gatlin Johnson";
        maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
        author = "Alp Mestanogullari <alpmestan@gmail.com>, Gatlin Johnson <rokenrol@gmail.com>";
        homepage = "http://github.com/alpmestan/hnn";
        url = "";
        synopsis = "A reasonably fast and simple neural network library";
        description = "\nA neural network library implemented purely in Haskell, relying on the\nhmatrix library.\n\nThis library provides a straight and simple feed-forward neural networks implementation which\nis way better than the one in hnn-0.1, in all aspects. It also provides a simple and little tested\nimplementation of recurrent neural networks.\n\nIf you're interested in the feed-forward neural networks, please read the mini-tutorial on\n@AI.HNN.FF.Network@.";
        buildType = "Simple";
      };
      components = {
        "hnn" = {
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
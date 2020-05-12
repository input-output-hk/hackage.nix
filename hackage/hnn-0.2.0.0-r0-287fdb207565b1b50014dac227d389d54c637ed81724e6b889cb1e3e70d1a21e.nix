{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hnn"; version = "0.2.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector-binary-instances" or (errorHandler.buildDepError "vector-binary-instances"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }
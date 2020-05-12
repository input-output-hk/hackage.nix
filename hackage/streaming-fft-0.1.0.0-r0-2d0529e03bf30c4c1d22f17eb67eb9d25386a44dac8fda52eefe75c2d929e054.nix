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
      specVersion = "1.10";
      identifier = { name = "streaming-fft"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/streaming-fft";
      url = "";
      synopsis = "online streaming fft";
      description = "online (in input and output) streaming fft algorithm\nthat uses a dense-stream optimisation to reduce work\nfrom /O(n log n)/ to /O(n)/.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contiguous-fft" or (errorHandler.buildDepError "contiguous-fft"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."prim-instances" or (errorHandler.buildDepError "prim-instances"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          ];
        buildable = true;
        };
      };
    }
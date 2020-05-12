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
      identifier = { name = "contiguous-fft"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 (c) chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/contiguous-fft";
      url = "";
      synopsis = "dft of contiguous memory structures";
      description = "DFT and iDFT on data structures implementing a common\ncontiguous interface";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
          (hsPkgs."prim-instances" or (errorHandler.buildDepError "prim-instances"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      };
    }
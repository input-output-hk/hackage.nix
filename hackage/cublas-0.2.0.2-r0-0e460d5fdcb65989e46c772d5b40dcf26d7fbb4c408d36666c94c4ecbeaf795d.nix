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
      identifier = { name = "cublas"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2012..2014]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>, Ben Sherman <benmsherman@gmail.com>";
      maintainer = "Ben Sherman <benmsherman@gmail.com>";
      author = "Trevor L. McDonell, Ben Sherman";
      homepage = "https://github.com/bmsherman/cublas";
      url = "";
      synopsis = "FFI bindings to the CUDA CUBLAS and CUSPARSE libraries";
      description = "This package provides FFI bindings to the NVIDIA CUDA CUBLAS and CUSPARSE\nlinear algebra GPU BLAS implementations. The modules\n@Foreign.CUDA.Cublas@ and @Foreign.CUDA.Cusparse@ are probably the most\nuseful.\n\nIf you have trouble installing this package, it may help to view this\nwebpage: <http://github.com/bmsherman/cublas>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          ];
        libs = [
          (pkgs."cublas" or (errorHandler.sysDepError "cublas"))
          (pkgs."cusparse" or (errorHandler.sysDepError "cusparse"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }
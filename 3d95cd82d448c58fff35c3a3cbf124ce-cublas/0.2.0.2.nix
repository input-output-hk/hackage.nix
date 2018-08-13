{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cublas";
        version = "0.2.0.2";
      };
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
      "cublas" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cuda)
          (hsPkgs.filepath)
          (hsPkgs.language-c)
          (hsPkgs.template-haskell)
          (hsPkgs.storable-complex)
        ];
        libs = [
          (pkgs."cublas")
          (pkgs."cusparse")
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cublas";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2012..2014]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>, Ben Sherman <benmsherman@gmail.com>";
      maintainer = "Ben Sherman <benmsherman@gmail.com>";
      author = "Trevor L. McDonell, Ben Sherman";
      homepage = "https://github.com/bmsherman/cublas";
      url = "";
      synopsis = "FFI bindings to the CUDA CUBLAS and CUSPARSE libraries";
      description = "This package provides FFI bindings to the NVIDIA CUDA CUBLAS and CUSPARSE\nlinear algebra GPU BLAS implementations. The modules\n@Foreign.CUDA.Cublas@ and @Foreign.CUDA.Cusparse@ are probably the most\nuseful.\n\nRequires CUDA version 6.5.\n\nIf you have trouble installing this package, it may help to view the Github\npage: <http://github.com/bmsherman/cublas>\n";
      buildType = "Custom";
    };
    components = {
      "library" = {
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
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cublas"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2012..2014]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>, Ben Sherman <benmsherman@gmail.com>";
      maintainer = "Ben Sherman <benmsherman@gmail.com>";
      author = "Trevor L. McDonell, Ben Sherman";
      homepage = "";
      url = "";
      synopsis = "FFI bindings to the CUDA CUBLAS and CUSPARSE libraries";
      description = "This package provides FFI bindings to the NVIDIA CUDA CUBLAS and CUSPARSE\nlinear algebra GPU BLAS implementations. The modules\n@Foreign.CUDA.Cublas@ and @Foreign.CUDA.Cusparse@ are probably the most\nuseful.\n\nIf you have trouble installing this package, it may help to view this\nwebpage: <http://github.com/bmsherman/cublas>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          ];
        libs = [
          (pkgs."cublas" or ((hsPkgs.pkgs-errors).sysDepError "cublas"))
          (pkgs."cusparse" or ((hsPkgs.pkgs-errors).sysDepError "cusparse"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }
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
      specVersion = "1.10";
      identifier = {
        name = "neural-network-hmatrix";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "";
      url = "";
      synopsis = "Yet Another High Performance and Extendable Neural Network in Haskell";
      description = "Provides execution backend of neural network on top of hmatrix.";
      buildType = "Simple";
    };
    components = {
      "neural-network-hmatrix" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl)
          (hsPkgs.mwc-random)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          (hsPkgs.deepseq)
          (hsPkgs.parallel)
          (hsPkgs.neural-network-base)
        ];
        libs = pkgs.lib.optional (system.isWindows) (pkgs.openblas) ++ pkgs.lib.optional (system.isLinux) (pkgs.blas);
      };
    };
  }
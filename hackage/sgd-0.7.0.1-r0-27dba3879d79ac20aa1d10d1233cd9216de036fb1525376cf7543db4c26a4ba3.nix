{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "sgd"; version = "0.7.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012-2019 Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/sgd";
      url = "";
      synopsis = "Stochastic gradient descent";
      description = "Stochastic gradient descent library.\n\nImport \"Numeric.SGD\" to use the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pipes)
          (hsPkgs.vector)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.primitive)
          (hsPkgs.logfloat)
          (hsPkgs.monad-par)
          (hsPkgs.deepseq)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.temporary)
          (hsPkgs.hmatrix)
          (hsPkgs.data-default)
          (hsPkgs.parallel)
          ];
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "sgd"; version = "0.8.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2012-2019 Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/sgd#readme";
      url = "";
      synopsis = "Stochastic gradient descent library";
      description = "Stochastic gradient descent library. . Import \"Numeric.SGD\" to use the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.hmatrix)
          (hsPkgs.logfloat)
          (hsPkgs.monad-par)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.pipes)
          (hsPkgs.primitive)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.temporary)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "vine-test" = {
          depends = [
            (hsPkgs.ad)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.hmatrix)
            (hsPkgs.logfloat)
            (hsPkgs.monad-par)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.pipes)
            (hsPkgs.primitive)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            (hsPkgs.sgd)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.temporary)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }
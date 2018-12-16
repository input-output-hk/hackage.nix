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
      specVersion = "1.10";
      identifier = {
        name = "mnist-idx";
        version = "0.1.2.6";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "christof.schramm@campus.lmu.de";
      author = "Christof Schramm";
      homepage = "https://github.com/kryoxide/mnist-idx/";
      url = "";
      synopsis = "Read and write IDX data that is used in e.g. the MNIST database.";
      description = "This package provides functionality to read and write data in the IDX\nbinary format. This format is relevant for machine learning applications,\nlike the MNIST handwritten digit database.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.vector)
            (hsPkgs.binary)
            (hsPkgs.directory)
            (hsPkgs.mnist-idx)
          ];
        };
      };
    };
  }
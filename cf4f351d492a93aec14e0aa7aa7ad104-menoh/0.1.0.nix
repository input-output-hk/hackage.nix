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
        name = "menoh";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "Copyright 2018 Preferred Networks, Inc.";
      maintainer = "Masahiro Sakai <sakai@preferred.jp>";
      author = "Masahiro Sakai <sakai@preferred.jp>";
      homepage = "";
      url = "";
      synopsis = "Haskell binding for Menoh DNN inference library";
      description = "Menoh is a MKL-DNN based DNN inference library for ONNX models. See https://github.com/pfnet-research/menoh/ for details.";
      buildType = "Simple";
    };
    components = {
      "menoh" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
        pkgconfig = [
          (pkgconfPkgs.menoh)
        ];
      };
      exes = {
        "vgg16_example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.JuicyPixels)
            (hsPkgs.optparse-applicative)
            (hsPkgs.menoh)
            (hsPkgs.vector)
          ];
        };
        "mnist_example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.JuicyPixels)
            (hsPkgs.optparse-applicative)
            (hsPkgs.menoh)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }
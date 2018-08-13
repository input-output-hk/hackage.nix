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
      specVersion = "1.24";
      identifier = {
        name = "mxnet-nn";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "http://github.com/pierric/mxnet-haskell-nn";
      url = "";
      synopsis = "Train a neural network with MXNet in Haskell.";
      description = "High level APIs to rain a neural network with MXNet in Haskell.";
      buildType = "Simple";
    };
    components = {
      "mxnet-nn" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mxnet)
          (hsPkgs.unordered-containers)
          (hsPkgs.resourcet)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.lens)
        ];
      };
      exes = {
        "mnist" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mxnet)
            (hsPkgs.unordered-containers)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-binary)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.resourcet)
            (hsPkgs.exceptions)
            (hsPkgs.mmorph)
            (hsPkgs.mtl)
            (hsPkgs.streaming)
            (hsPkgs.streaming-utils)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.mxnet-nn)
          ];
        };
      };
    };
  }
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
        name = "mxnet-dataiter";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/mxnet-dataiter#readme";
      url = "";
      synopsis = "mxnet dataiters";
      description = "Providing the mxnet dataiters as Stream or Conduit";
      buildType = "Simple";
    };
    components = {
      "mxnet-dataiter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.streaming)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.mxnet)
          (hsPkgs.mxnet-nn)
        ];
      };
      tests = {
        "streaming" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.streaming)
            (hsPkgs.mxnet)
            (hsPkgs.mxnet-dataiter)
          ];
        };
        "conduit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.mxnet)
            (hsPkgs.mxnet-dataiter)
          ];
        };
      };
    };
  }
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
        name = "mxnet-examples";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2017 Tao He";
      maintainer = "sighingnow@gmail.com";
      author = "Tao He";
      homepage = "http://github.com/sighingnow/mxnet-haskell#readme";
      url = "";
      synopsis = "Examples for MXNet in Haskell.";
      description = "Examples for MXNet in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ndarray" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mxnet)
          ];
        };
        "symbol" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mxnet)
          ];
        };
      };
    };
  }
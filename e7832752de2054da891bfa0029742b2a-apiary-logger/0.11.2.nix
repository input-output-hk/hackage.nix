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
        name = "apiary-logger";
        version = "0.11.2";
      };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "fast-logger support for apiary web framework.";
      description = "example: <https://github.com/philopon/apiary/blob/master/examples/persistent.hs>";
      buildType = "Simple";
    };
    components = {
      "apiary-logger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.apiary)
          (hsPkgs.fast-logger)
          (hsPkgs.monad-logger)
          (hsPkgs.reflection)
          (hsPkgs.data-default-class)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }
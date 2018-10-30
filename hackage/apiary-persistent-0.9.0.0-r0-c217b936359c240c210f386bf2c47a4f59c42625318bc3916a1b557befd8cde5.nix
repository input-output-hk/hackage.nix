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
        name = "apiary-persistent";
        version = "0.9.0.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "persistent support for apiary web framework.";
      description = "example: <https://github.com/philopon/apiary/blob/master/examples/persistent.hs>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.persistent)
          (hsPkgs.apiary)
          (hsPkgs.monad-logger)
          (hsPkgs.resourcet)
          (hsPkgs.mtl)
          (hsPkgs.reflection)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }
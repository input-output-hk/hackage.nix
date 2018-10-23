{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "apiary-memcached";
        version = "0.17.0.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "memcached client for apiary web framework.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "apiary-memcached" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.apiary)
          (hsPkgs.memcached-binary)
          (hsPkgs.data-default-class)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
        ];
      };
    };
  }
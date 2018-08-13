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
        name = "apiary-eventsource";
        version = "1.4.0";
      };
      license = "MIT";
      copyright = "(c) 2014-2015 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "eventsource support for apiary web framework.";
      description = "example: <https://github.com/philopon/apiary/blob/master/examples/eventsource.hs>";
      buildType = "Simple";
    };
    components = {
      "apiary-eventsource" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.apiary)
          (hsPkgs.blaze-builder)
          (hsPkgs.wai-extra)
        ];
      };
    };
  }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { wai2apiary = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "apiary-eventsource";
        version = "0.11.3";
      };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
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
        ] ++ (if flags.wai2apiary
          then [
            (hsPkgs.wai-eventsource)
            (hsPkgs.conduit)
          ]
          else [ (hsPkgs.wai-extra) ]);
      };
    };
  }
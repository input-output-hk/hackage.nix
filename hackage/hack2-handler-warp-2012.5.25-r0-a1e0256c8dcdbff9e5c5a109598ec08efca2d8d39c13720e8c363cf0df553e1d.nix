{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hack2-handler-warp";
        version = "2012.5.25";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/hack2-handler-warp";
      url = "";
      synopsis = "Hack2 warp handler";
      description = "Hack2 warp handler";
      buildType = "Simple";
    };
    components = {
      "hack2-handler-warp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.hack2)
          (hsPkgs.warp)
          (hsPkgs.air)
          (hsPkgs.hack2-interface-wai)
        ];
      };
    };
  }
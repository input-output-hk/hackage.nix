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
      specVersion = "1.2";
      identifier = {
        name = "hack2-handler-warp";
        version = "2011.10.12";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.hack2)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.enumerator)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.blaze-builder)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.air)
          (hsPkgs.safe)
        ];
      };
    };
  }
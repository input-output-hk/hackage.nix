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
      specVersion = "1.2";
      identifier = {
        name = "hack2-interface-wai";
        version = "2012.5.24";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/hack2-interface-wai";
      url = "";
      synopsis = "Hack2 interface of WAI";
      description = "Hack2 interface of WAI";
      buildType = "Simple";
    };
    components = {
      "hack2-interface-wai" = {
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
          (hsPkgs.blaze-builder)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.air)
          (hsPkgs.safe)
        ];
      };
    };
  }
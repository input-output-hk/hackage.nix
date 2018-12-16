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
        name = "hack2-interface-wai";
        version = "2017.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/hack2-interface-wai";
      url = "";
      synopsis = "Hack2 interface to WAI";
      description = "Convert a Hack2 App to a WAI app";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.hack2)
          (hsPkgs.containers)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.safe)
        ];
      };
    };
  }
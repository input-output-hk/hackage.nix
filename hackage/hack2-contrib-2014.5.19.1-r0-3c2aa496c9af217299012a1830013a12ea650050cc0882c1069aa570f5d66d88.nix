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
        name = "hack2-contrib";
        version = "2014.5.19.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/hack2-contrib";
      url = "";
      synopsis = "Hack2 contrib";
      description = "Common middlewares and utilities for Hack2";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.time)
          (hsPkgs.air)
          (hsPkgs.hack2)
          (hsPkgs.text)
        ];
      };
    };
  }
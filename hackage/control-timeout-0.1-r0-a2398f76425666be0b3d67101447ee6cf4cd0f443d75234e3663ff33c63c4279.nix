{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "control-timeout";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Adam Langley <agl@imperialviolet.org>";
      homepage = "";
      url = "";
      synopsis = "Timeout handling";
      description = "This package provides functions for running timeouts";
      buildType = "Custom";
    };
    components = {
      "control-timeout" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.stm)
        ];
      };
    };
  }
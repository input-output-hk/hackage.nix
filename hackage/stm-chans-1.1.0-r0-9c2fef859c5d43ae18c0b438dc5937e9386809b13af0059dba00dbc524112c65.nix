{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "stm-chans";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 wren ng thornton";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Additional types of channels for STM.";
      description = "Additional types of channels for STM.";
      buildType = "Custom";
    };
    components = {
      "stm-chans" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
        ];
      };
    };
  }
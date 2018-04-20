{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stm-chans";
          version = "1.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011--2012 wren ng thornton";
        maintainer = "wren@community.haskell.org";
        author = "wren ng thornton, Thomas DuBuisson";
        homepage = "http://code.haskell.org/~wren/";
        url = "";
        synopsis = "Additional types of channels for STM.";
        description = "Additional types of channels for STM.";
        buildType = "Custom";
      };
      components = {
        stm-chans = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }
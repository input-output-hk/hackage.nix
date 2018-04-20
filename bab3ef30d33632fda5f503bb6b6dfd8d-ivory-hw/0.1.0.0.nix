{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ivory-hw";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Galois, Inc.";
        maintainer = "jamesjb@galois.com";
        author = "Galois, Inc.";
        homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
        url = "";
        synopsis = "Ivory hardware model (STM32F4).";
        description = "Hardware model for Ivory.  Currently, the STM32F4 is supported; others may be added.";
        buildType = "Simple";
      };
      components = {
        ivory-hw = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.ivory
            hsPkgs.ivory-bitdata
            hsPkgs.ivory-backend-c
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "ALUT";
          version = "2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sven Panne <sven.panne@aedion.de>";
        author = "";
        homepage = "http://www.openal.org/";
        url = "";
        synopsis = "A binding for the OpenAL Utility Toolkit";
        description = "A Haskell binding for the OpenAL Utility Toolkit, which makes\nmanaging of OpenAL contexts, loading sounds in various formats\nand creating waveforms very easy. For more information about the\nC library on which this binding is based, please see:\n<http://www.openal.org/openal_webstf/specs/alut.html>.";
        buildType = "Custom";
      };
      components = {
        ALUT = {
          depends  = [
            hsPkgs.base
            hsPkgs.OpenGL
            hsPkgs.OpenAL
          ];
        };
      };
    }
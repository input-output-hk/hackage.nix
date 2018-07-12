{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "OpenAL";
          version = "1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sven Panne <sven.panne@aedion.de>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A binding to the OpenAL cross-platform 3D audio API";
        description = "A Haskell binding for the OpenAL cross-platform 3D audio API,\nappropriate for use with gaming applications and many other\ntypes of audio applications.  For more information about OpenAL,\nplease see: <http://www.openal.org/>.";
        buildType = "Custom";
      };
      components = {
        "OpenAL" = {
          depends  = [
            hsPkgs.base
            hsPkgs.OpenGL
          ];
        };
      };
    }
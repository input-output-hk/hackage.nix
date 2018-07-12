{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hogre-examples";
          version = "0.0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Antti Salonen 2009";
        maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
        author = "Antti Salonen<ajsalonen at gmail dot com>";
        homepage = "http://github.com/anttisalonen/hogre-examples";
        url = "";
        synopsis = "Examples for using Hogre.";
        description = "Examples for using Hogre, Haskell bindings to OGRE\n(Object-Oriented Graphics Rendering Engine)\n(<http://www.ogre3d.org/>).\nexample_01 creates a simple scene with a moving entity.\nexample_02 demonstrates use of SDL for input and window\ncreation.\nexample_03 demonstrates ray scene queries and loading\na world configuration from a file.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "example_01" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.hogre
            ];
            libs = [ pkgs.OgreMain ];
          };
          "example_02" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.hogre
              hsPkgs.SDL
            ];
            libs = [ pkgs.OgreMain ];
          };
          "example_03" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.hogre
              hsPkgs.SDL
              hsPkgs.stm
            ];
            libs = [ pkgs.OgreMain ];
          };
        };
      };
    }
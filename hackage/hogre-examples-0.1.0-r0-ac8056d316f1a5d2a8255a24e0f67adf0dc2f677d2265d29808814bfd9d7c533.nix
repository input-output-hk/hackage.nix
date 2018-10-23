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
        name = "hogre-examples";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "Antti Salonen 2010";
      maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
      author = "Antti Salonen<ajsalonen at gmail dot com>";
      homepage = "http://github.com/anttisalonen/hogre-examples";
      url = "";
      synopsis = "Examples for using Hogre.";
      description = "Examples for using Hogre, Haskell bindings to OGRE\n(Object-Oriented Graphics Rendering Engine)\n(<http://www.ogre3d.org/>).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "example_01" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.hogre)
          ];
          libs = [ (pkgs."OgreMain") ];
        };
        "example_02" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.hogre)
          ];
          libs = [ (pkgs."OgreMain") ];
        };
      };
    };
  }
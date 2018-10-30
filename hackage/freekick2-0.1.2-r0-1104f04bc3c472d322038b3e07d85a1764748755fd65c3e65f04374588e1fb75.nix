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
      specVersion = "1.6";
      identifier = {
        name = "freekick2";
        version = "0.1.2";
      };
      license = "LicenseRef-GPL";
      copyright = "Antti Salonen 2010";
      maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
      author = "Antti Salonen<ajsalonen at gmail dot com>";
      homepage = "http://github.com/anttisalonen/freekick2";
      url = "";
      synopsis = "A soccer game";
      description = "A soccer game.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "freekick2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.OpenGL)
            (hsPkgs.mtl)
            (hsPkgs.SDL)
            (hsPkgs.EdisonCore)
            (hsPkgs.random)
            (hsPkgs.FTGL)
            (hsPkgs.pngload)
            (hsPkgs.array)
            (hsPkgs.directory)
            (hsPkgs.binary)
            (hsPkgs.filepath)
            (hsPkgs.template-haskell)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ];
        };
        "swos2gen" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.binary)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ];
        };
        "createteam" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.binary)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }
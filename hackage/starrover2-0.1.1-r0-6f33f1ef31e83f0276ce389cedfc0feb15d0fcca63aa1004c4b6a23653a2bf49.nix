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
        name = "starrover2";
        version = "0.1.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Antti Salonen 2010";
      maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
      author = "Antti Salonen<ajsalonen at gmail dot com>";
      homepage = "http://github.com/anttisalonen/starrover2";
      url = "";
      synopsis = "Space simulation game";
      description = "Space simulation game.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "starrover2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.OpenGL)
            (hsPkgs.mtl)
            (hsPkgs.SDL)
            (hsPkgs.EdisonCore)
            (hsPkgs.random)
            (hsPkgs.FTGL)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }
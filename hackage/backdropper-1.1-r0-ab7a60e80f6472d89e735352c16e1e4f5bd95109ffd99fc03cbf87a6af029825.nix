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
      specVersion = "1.2";
      identifier = {
        name = "backdropper";
        version = "1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008, Yann Golanski.";
      maintainer = "yann@kierun.org";
      author = "Yann Golanski <yann@kierun.org>";
      homepage = "";
      url = "";
      synopsis = "Rotates backdrops for X11 displays using qiv.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {};
      exes = {
        "backdropper_consol" = {
          depends  = [
            (hsPkgs.old-time)
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.Cabal)
            (hsPkgs.haskell98)
            (hsPkgs.hslogger)
          ];
        };
      };
    };
  }
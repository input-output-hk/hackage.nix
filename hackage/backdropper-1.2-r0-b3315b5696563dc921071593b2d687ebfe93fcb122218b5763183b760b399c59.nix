{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "backdropper";
        version = "1.2";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008, Yann Golanski.";
      maintainer = "yann@kierun.org";
      author = "Yann Golanski <yann@kierun.org>";
      homepage = "";
      url = "";
      synopsis = "Rotates backdrops for X11 displays using Imagemagic.";
      description = "Rotates backdrops for X11 displays using Imagemagic.";
      buildType = "Simple";
    };
    components = {
      "library" = {};
      exes = {
        "backdropper_consol" = {
          depends  = [
            (hsPkgs.hslogger)
          ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.old-time)
              (hsPkgs.directory)
              (hsPkgs.process)
              (hsPkgs.random)
              (hsPkgs.haskell98)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }
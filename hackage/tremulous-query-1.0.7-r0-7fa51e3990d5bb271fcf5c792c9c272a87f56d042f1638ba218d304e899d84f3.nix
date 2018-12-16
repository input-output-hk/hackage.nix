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
      specVersion = "1.10";
      identifier = {
        name = "tremulous-query";
        version = "1.0.7";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Christoffer Öjeling <christoffer@ojeling.net>";
      author = "Christoffer Öjeling";
      homepage = "";
      url = "";
      synopsis = "Library for polling Tremulous servers";
      description = "A library for polling servers from the game Tremulous.\nSupports both the released 1.1 version and the\n1.2 Gameplay Preview commonly known as GPP.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.mtl)
          (hsPkgs.deepseq)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
      };
    };
  }
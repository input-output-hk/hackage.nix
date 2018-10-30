{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      sound = true;
      pdflaby = false;
      ftgl = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "topkata";
        version = "0.2.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Christoph Bauer <ich@christoph-bauer.net>";
      author = "Christoph Bauer";
      homepage = "http://home.arcor.de/chr_bauer/topkata.html";
      url = "";
      synopsis = "OpenGL Arcade Game";
      description = "Guide a jumping ball through a maze.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "topkata" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
            (hsPkgs.array)
            (hsPkgs.random)
          ] ++ pkgs.lib.optionals (flags.sound) [
            (hsPkgs.OpenAL)
            (hsPkgs.ALUT)
          ]) ++ pkgs.lib.optional (flags.ftgl) (hsPkgs.FTGL);
        };
        "pdflaby" = {
          depends  = pkgs.lib.optionals (flags.pdflaby) [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.cairo)
          ];
        };
      };
    };
  }
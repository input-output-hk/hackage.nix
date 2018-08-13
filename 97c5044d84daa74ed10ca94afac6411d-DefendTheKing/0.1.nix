{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "DefendTheKing";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009, Yair Chuchem";
      maintainer = "Yair Chuchem (yairchu@gmail.com)";
      author = "Yair Chuchem";
      homepage = "http://github.com/yairchu/defend/tree";
      url = "";
      synopsis = "A graphical demo. Will be a game";
      description = "Defend the King from the Forces of Different:\nA graphical demo.\nIntended to become a simple fast-paced multiplayer RTS game\nin the likes of Bughouse-Chess and Starcraft.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "defend" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.peakachu)
            (hsPkgs.GLUT)
          ];
        };
      };
    };
  }
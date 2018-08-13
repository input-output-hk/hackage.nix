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
        version = "0.2.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009, Yair Chuchem";
      maintainer = "Yair Chuchem (yairchu@gmail.com)";
      author = "Yair Chuchem";
      homepage = "http://github.com/yairchu/defend/tree";
      url = "";
      synopsis = "A simple RTS game";
      description = "Defend the King from the Forces of Different:\n(work in progress)\nA simple fast-paced multiplayer RTS game\ninspired by Bughouse-Chess and Starcraft.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "defend" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.peakachu)
            (hsPkgs.GLUT)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.time)
            (hsPkgs.utility-ht)
            (hsPkgs.haskell98)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.MaybeT)
            (hsPkgs.zlib)
          ];
        };
        "defendFontEdit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.peakachu)
            (hsPkgs.GLUT)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }
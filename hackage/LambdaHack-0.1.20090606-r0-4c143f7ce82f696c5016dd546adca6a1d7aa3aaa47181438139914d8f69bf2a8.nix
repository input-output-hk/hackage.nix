{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      curses = false;
      gtk = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "LambdaHack";
        version = "0.1.20090606";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Andres Loeh <mail@andres-loeh.de>";
      author = "Andres Loeh <mail@andres-loeh.de>";
      homepage = "";
      url = "";
      synopsis = "a small roguelike game";
      description = "a small roguelike game";
      buildType = "Simple";
    };
    components = {
      exes = {
        "LambdaHack" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.zlib)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.mtl)
          ] ++ (if flags.curses
            then [ (hsPkgs.hscurses) ]
            else if flags.gtk
              then [ (hsPkgs.gtk) ]
              else [ (hsPkgs.vty) ]);
          libs = pkgs.lib.optional (flags.curses) (pkgs."curses");
        };
      };
    };
  }
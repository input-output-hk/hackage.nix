{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { curses = false; vty = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "LambdaHack"; version = "0.1.20110117"; };
      license = "BSD-3-Clause";
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
            (hsPkgs.old-time)
            (hsPkgs.ConfigFile)
            (hsPkgs.MissingH)
            (hsPkgs.filepath)
            ] ++ (if flags.curses
            then [ (hsPkgs.hscurses) ]
            else if flags.vty then [ (hsPkgs.vty) ] else [ (hsPkgs.gtk) ]);
          libs = (pkgs.lib).optional (flags.curses) (pkgs."curses");
          };
        };
      };
    }
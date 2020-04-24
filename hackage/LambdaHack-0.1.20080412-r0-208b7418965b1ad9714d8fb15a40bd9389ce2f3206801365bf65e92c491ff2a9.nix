{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { curses = false; gtk = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "LambdaHack"; version = "0.1.20080412"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ (if flags.curses
            then [
              (hsPkgs."hscurses" or ((hsPkgs.pkgs-errors).buildDepError "hscurses"))
              ]
            else if flags.gtk
              then [
                (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
                ]
              else [
                (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
                ]);
          libs = (pkgs.lib).optional (flags.curses) (pkgs."curses" or ((hsPkgs.pkgs-errors).sysDepError "curses"));
          buildable = true;
          };
        };
      };
    }
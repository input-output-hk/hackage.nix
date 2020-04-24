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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ] ++ (if flags.curses
            then [
              (hsPkgs."hscurses" or ((hsPkgs.pkgs-errors).buildDepError "hscurses"))
              ]
            else if flags.vty
              then [
                (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
                ]
              else [
                (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
                ]);
          libs = (pkgs.lib).optional (flags.curses) (pkgs."curses" or ((hsPkgs.pkgs-errors).sysDepError "curses"));
          buildable = true;
          };
        };
      };
    }
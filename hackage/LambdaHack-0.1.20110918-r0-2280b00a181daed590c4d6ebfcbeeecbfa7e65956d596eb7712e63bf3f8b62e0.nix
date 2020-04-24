{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { curses = false; vty = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "LambdaHack"; version = "0.1.20110918"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andres Loeh <mail@andres-loeh.de>";
      author = "Andres Loeh, Mikolaj Konarski";
      homepage = "http://github.com/kosmikus/LambdaHack";
      url = "";
      synopsis = "A roguelike game engine in early development";
      description = "This is an alpha release of LambdaHack, a roguelike game engine\npackaged together with a small example roguelike game\n(not yet well separated; this is future work,\ntogether with improving the AI monad EDSL,\nso that the rules for synthesising monster behaviour\nfrom game content are more readable and easier to debug).\n\nAnother game using this engine is Allure of the Stars\nat <http://hackage.haskell.org/package/Allure>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "LambdaHack" = {
          depends = ([
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
            ] ++ [
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ]) ++ (if flags.curses
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
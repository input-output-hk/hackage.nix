{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "riot"; version = "1.20080618"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tuomo Valkonen";
      author = "Tuomo Valkonen";
      homepage = "http://modeemi.fi/~tuomov/riot/";
      url = "";
      synopsis = "Riot is an Information Organisation Tool";
      description = "Riot is a tool for keeping (textual) information organised. Some people\ncall such programs 'outliners'. It is a todo list and note manager, and\na manager for whatever information one might collect, that I wrote\nbecause I couldn't find a single one that was at all close to what I\nwanted. Riot has an interface resembling those of slrn and mutt and all\ntext editing is done with an external editor: Riot is simply a\nnice-to-use browser for collections of text.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "riot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."packedstring" or ((hsPkgs.pkgs-errors).buildDepError "packedstring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ];
          libs = [
            (pkgs."ncursesw" or ((hsPkgs.pkgs-errors).sysDepError "ncursesw"))
            ];
          buildable = true;
          };
        };
      };
    }
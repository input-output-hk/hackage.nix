{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "posplyu"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "zl29ah@gmail.com";
      author = "Sergey Alirzaev";
      homepage = "";
      url = "";
      synopsis = "Sleep tracker for X11, using XScreenSaver extension and manual input.";
      description = "posplyu is a sleep tracker for X11, using XScreenSaver extension and manual input, motivated by http://super-memory.com/articles/sleep.htm and designed to facilitate transitioning to the free running sleep regiment while living mostly with a GNU/Linux system handy. The tool allows you to measure and somewhat predict your sleeping cycle. For now it assumes a 24h cycle with one sleep period.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "posplyu" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."timerep" or ((hsPkgs.pkgs-errors).buildDepError "timerep"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }
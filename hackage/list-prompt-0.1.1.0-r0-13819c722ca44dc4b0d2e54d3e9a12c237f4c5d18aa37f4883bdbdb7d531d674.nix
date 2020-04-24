{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "list-prompt"; version = "0.1.1.0"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2014 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/list-prompt.git";
      url = "";
      synopsis = "A simple list prompt UI for the terminal.";
      description = "See https://github.com/yamadapc/list-prompt";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
          (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = {
        "simple-demo" = {
          depends = [
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."list-prompt" or ((hsPkgs.pkgs-errors).buildDepError "list-prompt"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."list-prompt" or ((hsPkgs.pkgs-errors).buildDepError "list-prompt"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      };
    }
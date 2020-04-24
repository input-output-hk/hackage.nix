{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "questioner"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/haskell-questioner.git";
      url = "";
      synopsis = "A package for prompting values from the command-line.";
      description = "This is still being developed";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
          (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
          ];
        buildable = true;
        };
      exes = {
        "questioner-list-prompt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."questioner" or ((hsPkgs.pkgs-errors).buildDepError "questioner"))
            ];
          buildable = if flags.examples then true else false;
          };
        "questioner-checkbox-prompt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."questioner" or ((hsPkgs.pkgs-errors).buildDepError "questioner"))
            ];
          buildable = if flags.examples then true else false;
          };
        "questioner-spinner" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."questioner" or ((hsPkgs.pkgs-errors).buildDepError "questioner"))
            ];
          buildable = if flags.examples then true else false;
          };
        "questioner-progressbar" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."questioner" or ((hsPkgs.pkgs-errors).buildDepError "questioner"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }
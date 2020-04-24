{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chatty"; version = "0.7.0.1"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "chatty@mcohrs.eu";
      author = "Marvin Cohrs";
      homepage = "http://hub.darcs.net/enum/chatty";
      url = "";
      synopsis = "Some monad transformers and typeclasses for abstraction of global dependencies.";
      description = "Some monad transformers and typeclasses abstracting global dependencies, like Text in- and output (incl. here-strings, pipes, recorders and file-redirections on a per-function scope),\nprocess spawning, time and random number retrieval.\nNote that the author does not recommend using this package for new projects. Please use packages better suited for individual purpose.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."setenv" or ((hsPkgs.pkgs-errors).buildDepError "setenv"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."chatty-utils" or ((hsPkgs.pkgs-errors).buildDepError "chatty-utils"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }
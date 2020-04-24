{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "arghwxhaskell"; version = "0.8.2.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "-";
      author = "Simeon Visser";
      homepage = "https://wiki.haskell.org/Argh!";
      url = "";
      synopsis = "An interpreter for the Argh! programming language in wxHaskell.";
      description = "An interpreter for the Argh! esoteric programming language in\nwxHaskell. The program allows one to load, edit, save, validate\nand run Argh! programs. It currently supports all commands\nexcept 'e' and 'E'.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "argh" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            ];
          buildable = true;
          };
        };
      };
    }
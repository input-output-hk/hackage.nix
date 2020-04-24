{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "haskdogs"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ierton@gmail.com";
      author = "Sergey Mironov";
      homepage = "http://github.com/ierton/haskdogs";
      url = "";
      synopsis = "Generate ctags file for haskell project directory and it's deps";
      description = "haskdogs is a small shellscript-like tool which creates tag file for entire\nhaskell project directory. It takes into account first-level dependencies by\nrecursively scanning imports and adding matching packages to the final\ntag list.\nAs a result, programmer can use his/her text editor supporting tags (vim, for\nexample) to jump directly to definition of any standard or foreign function\nhe/she uses.\nNote, that haskdogs calls some Unix shell commands like 'test' or 'mkdir' via\nSHS so this tool will probably work on Linuxes and maybe Macs. Pure Windows\nwill fail to run it.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskdogs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."HSH" or ((hsPkgs.pkgs-errors).buildDepError "HSH"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }
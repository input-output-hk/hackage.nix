{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hsshellscript"; version = "3.3.1"; };
      license = "LicenseRef-LGPL";
      copyright = "(c)2004-2011 by Volker Wysk";
      maintainer = "hsss@volker-wysk.de";
      author = "Volker Wysk";
      homepage = "http://www.volker-wysk.de/hsshellscript/";
      url = "";
      synopsis = "Haskell for Unix shell scripting tasks";
      description = "A Haskell-library for tasks which are usually done in\nshell scripts. This includes parsing command line\narguments; dealing with paths; some commands for dealing\nwith files; calling external programs and subroutines as\nseparate processes; pipes and redirection of input and\noutput; and error handling.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }
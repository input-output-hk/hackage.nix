{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.2.0";
      identifier = { name = "Pup-Events-Demo"; version = "1.2"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2012 Daniel Wilson";
      maintainer = "wilsonhardrock@gmail.com";
      author = "Daniel Wilson";
      homepage = "";
      url = "";
      synopsis = "A networked event handling framework for hooking\ninto other programs.";
      description = "Pup-Events is a networking enabled event handling\nframework. This package contains a demonstration of\nhow this library is expected to be used.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "server" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Pup-Events-Server" or ((hsPkgs.pkgs-errors).buildDepError "Pup-Events-Server"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        "demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Pup-Events-Client" or ((hsPkgs.pkgs-errors).buildDepError "Pup-Events-Client"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."Pup-Events-PQueue" or ((hsPkgs.pkgs-errors).buildDepError "Pup-Events-PQueue"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            ];
          buildable = true;
          };
        };
      };
    }
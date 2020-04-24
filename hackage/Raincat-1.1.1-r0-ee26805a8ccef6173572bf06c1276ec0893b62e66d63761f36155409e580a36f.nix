{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Raincat"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Garrick Chin 2008-2010";
      maintainer = "Mikhail S. Pobolovets <styx.mp@gmail.com>";
      author = "Garrick Chin, Susan Lin, SooHyun Jang, Anthony Maurice, William Wang,\nAndrew Zheng, Rachel Berkowitz, Spencer Ying, Tal Stramer, Mikhail Pobolovets";
      homepage = "http://raincat.bysusanlin.com/";
      url = "git://github.com/styx/Raincat.git";
      synopsis = "A puzzle game written in Haskell with a cat in lead role";
      description = "Project Raincat is a game developed by Carnegie Mellon students\nthrough GCS during the Fall 2008 semester. Raincat features game\nplay inspired from classics Lemmings and The Incredible Machine.\nThe project proved to be an excellent learning experience for\nthe programmers. Everything is programmed in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "raincat" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-image" or ((hsPkgs.pkgs-errors).buildDepError "SDL-image"))
            (hsPkgs."SDL-mixer" or ((hsPkgs.pkgs-errors).buildDepError "SDL-mixer"))
            ];
          buildable = true;
          };
        };
      };
    }
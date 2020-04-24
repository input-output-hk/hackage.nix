{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "SoccerFunGL"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://www.cs.ru.nl/~peter88/SoccerFun/SoccerFun.html";
      url = "";
      synopsis = "OpenGL UI for the SoccerFun framework";
      description = "This provides an 2D user interface for the SoccerFun framework implemented in OpenGL/GLUT.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."SoccerFun" or ((hsPkgs.pkgs-errors).buildDepError "SoccerFun"))
          ];
        buildable = true;
        };
      exes = { "sfPlayTape" = { buildable = true; }; };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "free-game"; version = "0.9.4.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2013 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/free-game/tree/maintainance0.9";
      url = "";
      synopsis = "Cross-platform GUI library based on free monads";
      description = "free-game is a library that abstracts graphical applications with simple interfaces. Twitter: #hs_free_game";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."freetype2" or ((hsPkgs.pkgs-errors).buildDepError "freetype2"))
          (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."JuicyPixels-repa" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels-repa"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."colors" or ((hsPkgs.pkgs-errors).buildDepError "colors"))
          (hsPkgs."control-bool" or ((hsPkgs.pkgs-errors).buildDepError "control-bool"))
          ];
        buildable = true;
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yampa-glfw"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014 by Kosyrev Serge, based on yampa-glut (c) 2012 by Nikolay Orlyuk";
      maintainer = "_deepfire@feelingofgreen.ru";
      author = "Kosyrev Serge";
      homepage = "https://github.com/deepfire/yampa-glfw";
      url = "";
      synopsis = "Connects GLFW-b (GLFW 3+) with the Yampa FRP library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
          (hsPkgs."newtype" or ((hsPkgs.pkgs-errors).buildDepError "newtype"))
          (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      exes = {
        "yampa-glfw-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            (hsPkgs."newtype" or ((hsPkgs.pkgs-errors).buildDepError "newtype"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
            (hsPkgs."yampa-glfw" or ((hsPkgs.pkgs-errors).buildDepError "yampa-glfw"))
            ];
          buildable = true;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { yampa-core = true; examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yampa-glut"; version = "0.1.1.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2012 by Nikolay Orlyuk";
      maintainer = "virkony@gmail.com";
      author = "Nikolay Orlyuk";
      homepage = "https://github.com/ony/yampa-glut";
      url = "";
      synopsis = "Connects Yampa and GLUT";
      description = "This package contains an adapter that connects OpenGL/GLUT to the\nFRP library \\\"Yampa\\\".\n\n&#169; 2012 by Nikolay Orlyuk; GPL-3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."newtype" or ((hsPkgs.pkgs-errors).buildDepError "newtype"))
          ] ++ (if flags.yampa-core
          then [
            (hsPkgs."Yampa-core" or ((hsPkgs.pkgs-errors).buildDepError "Yampa-core"))
            ]
          else [
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            ]);
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."newtype" or ((hsPkgs.pkgs-errors).buildDepError "newtype"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
            (hsPkgs."vector-space-opengl" or ((hsPkgs.pkgs-errors).buildDepError "vector-space-opengl"))
            (hsPkgs."yampa-glut" or ((hsPkgs.pkgs-errors).buildDepError "yampa-glut"))
            ] ++ (if flags.yampa-core
            then [
              (hsPkgs."Yampa-core" or ((hsPkgs.pkgs-errors).buildDepError "Yampa-core"))
              ]
            else [
              (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
              ]);
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }
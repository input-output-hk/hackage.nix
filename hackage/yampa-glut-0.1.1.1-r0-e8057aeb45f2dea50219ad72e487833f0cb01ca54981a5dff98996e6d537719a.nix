{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
        ] ++ (if flags.yampa-core
          then [
            (hsPkgs."Yampa-core" or (errorHandler.buildDepError "Yampa-core"))
          ]
          else [ (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa")) ]);
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            (hsPkgs."vector-space-opengl" or (errorHandler.buildDepError "vector-space-opengl"))
            (hsPkgs."yampa-glut" or (errorHandler.buildDepError "yampa-glut"))
          ] ++ (if flags.yampa-core
            then [
              (hsPkgs."Yampa-core" or (errorHandler.buildDepError "Yampa-core"))
            ]
            else [ (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa")) ]);
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }
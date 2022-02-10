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
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "xosd"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Don Stewart <dons00@gmail.com>";
      maintainer = "Don Stewart <dons00@gmail.com>";
      author = "";
      homepage = "http://code.haskell.org/~dons/code/xosd";
      url = "";
      synopsis = "A binding to the X on-screen display ";
      description = "A binding to the X on-screen display\n\nxosd is a library for displaying an on-screen display (like the one\non many TVs) on your X display.\n\nFor example, the following displays the string \\\"TEST\\\" in the center\nof the screen, in 34pt Helvetica, for 3 seconds.\n\n> runXOSD [ Timeout 3\n>         , VAlign VAlignMiddle\n>         , HAlign HAlignCenter\n>         , Font \"-adobe-helvetica-bold-r-*-*-34-*-*-*-*-*-*-*\"\n>         , Color \"LimeGreen\"\n>         , Display (String \"TEST\")]\n>                   (const $ return ())\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."xosd" or (errorHandler.sysDepError "xosd")) ];
        buildable = true;
        };
      };
    }
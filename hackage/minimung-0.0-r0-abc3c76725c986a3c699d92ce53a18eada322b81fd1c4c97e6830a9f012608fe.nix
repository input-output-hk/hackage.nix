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
      identifier = { name = "minimung"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yakov Zaytsev <yakov@yakov.cc>";
      author = "Yakov Zaytsev";
      homepage = "";
      url = "";
      synopsis = "Shows how to run grabber on Mac OS X";
      description = "minimung is capable to do real time CIF??\n\nOnly 'Mac', 'Mac.Carbon', 'Mac.QuickDraw', 'Mac.QuickTime' are stable and good. The rest is quick hack\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "minimung" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            ];
          frameworks = [
            (pkgs."QuickTime" or (errorHandler.sysDepError "QuickTime"))
            (pkgs."Carbon" or (errorHandler.sysDepError "Carbon"))
            ];
          buildable = true;
          };
        };
      };
    }
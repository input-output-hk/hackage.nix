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
      identifier = { name = "minimung"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yakov Zaytsev <yakov@yakov.cc>";
      author = "Yakov Zaytsev";
      homepage = "";
      url = "";
      synopsis = "Shows how to run grabber on Mac OS X";
      description = "This version is known to work with GHC 6.12 and Mac OS X 10.6.2.\n\nHaddock generated documentation is available from my homepage\n\nminimung is capable to do real time CIF??\n\nModules under 'Mac' are stable and good.\n\n'Minimung.hs' is a clumsy example of usage.\n";
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
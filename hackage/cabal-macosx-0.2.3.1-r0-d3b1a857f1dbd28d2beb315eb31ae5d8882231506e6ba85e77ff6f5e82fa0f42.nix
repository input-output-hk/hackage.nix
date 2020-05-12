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
      specVersion = "1.6";
      identifier = { name = "cabal-macosx"; version = "0.2.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Eric Kow & Andy Gimblett";
      maintainer = "Daniele Francesconi <dfrancesconi12@gmail.com>";
      author = "Eric Kow <eric.kow@gmail.com> & Andy Gimblett <haskell@gimbo.org.uk>";
      homepage = "http://github.com/danfran/cabal-macosx";
      url = "";
      synopsis = "Cabal support for creating Mac OSX application bundles.";
      description = "GUI applications on Mac OSX must be run as application /bundles/;\nthese wrap an executable in a particular directory structure which\ncan also carry resources such as icons, program metadata, other\nbinaries, and copies of shared libraries.\nThis package provides Cabal support for creating such application\nbundles.\nFor more information about OSX application bundles, look for the\n/Bundle Programming Guide/ on the /Apple Developer Connection/\nwebsite, <http://developer.apple.com/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "macosx-app" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
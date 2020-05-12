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
      identifier = { name = "HackMail"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jfredett@gmail.com";
      author = "Joe Fredette";
      homepage = "http://patch-tag.com/publicrepos/Hackmail";
      url = "http://patch-tag.com/publicrepos/Hackmail";
      synopsis = "A Procmail Replacement as Haskell EDSL ";
      description = "A program for filtering/sorting email. Monadic EDSL for sorting, supports multiple mail storage formats.  ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          ];
        buildable = true;
        };
      exes = {
        "hackmail" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."hdaemonize" or (errorHandler.buildDepError "hdaemonize"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            ];
          buildable = true;
          };
        };
      };
    }
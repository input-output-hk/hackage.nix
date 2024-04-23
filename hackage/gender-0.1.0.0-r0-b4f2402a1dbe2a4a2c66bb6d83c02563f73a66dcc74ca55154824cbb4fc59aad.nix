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
      specVersion = "1.8";
      identifier = { name = "gender"; version = "0.1.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "Copyright (c) 2013, Kranium Gikos Mendoza\nCopyright (c) 2007-2008, Jörg Michael";
      maintainer = "Kranium Gikos Mendoza <kranium@gikos.net>";
      author = "Kranium Gikos Mendoza <kranium@gikos.net>";
      homepage = "https://github.com/womfoo/gender";
      url = "";
      synopsis = "Identify a persons gender by their first name";
      description = "This is a Haskell port of Jörg Michael's gender.c/nam_dict gender identification library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "gender" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
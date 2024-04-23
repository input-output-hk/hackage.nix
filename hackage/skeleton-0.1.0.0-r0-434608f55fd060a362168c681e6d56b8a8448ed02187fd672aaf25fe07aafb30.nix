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
      specVersion = "1.10";
      identifier = { name = "skeleton"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(C) Michele Guerini Rocco";
      maintainer = "micheleguerinirocco@me.com";
      author = "rnhmjoj";
      homepage = "";
      url = "";
      synopsis = "a tool to access the OSX keychain";
      description = "skeleton is a command line tool used to quickly access passwords\nstored in the OSX keychain. You can search by account, server\nname or any other available attribute and get a list of fuzzy\nmatched result. The first match is be copied to the clipbdoard.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "skeleton" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hex" or (errorHandler.buildDepError "hex"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."argparser" or (errorHandler.buildDepError "argparser"))
            (hsPkgs."posix-escape" or (errorHandler.buildDepError "posix-escape"))
          ];
          buildable = true;
        };
      };
    };
  }
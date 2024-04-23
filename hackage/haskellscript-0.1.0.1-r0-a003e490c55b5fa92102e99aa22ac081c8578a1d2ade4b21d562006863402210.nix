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
      identifier = { name = "haskellscript"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Sean Parsons";
      maintainer = "github@futurenotfound.com";
      author = "Sean Parsons";
      homepage = "http://github.com/seanparsons/haskellscript/";
      url = "";
      synopsis = "Command line tool for running Haskell scripts with a shebang.";
      description = "Command line tool for running Haskell scripts with a shebang.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haskellscript" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          ];
          buildable = true;
        };
      };
    };
  }
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
    flags = { small-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "strictify"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.clover@gmail.com";
      author = "Sterling Clover";
      homepage = "";
      url = "";
      synopsis = "Find a local optimum of strictness annotations.";
      description = "Find a local optimum of strictness annotations.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "strictify" = {
          depends = if flags.small-base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              ];
          buildable = true;
          };
        };
      };
    }
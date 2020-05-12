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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yampa-canvas"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 The University of Kansas";
      maintainer = "andygill@ku.edu";
      author = "Neil Sculthorpe";
      homepage = "";
      url = "";
      synopsis = "blank-canvas frontend for Yampa";
      description = "@blank-canvas@ frontend for @Yampa@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blank-canvas" or (errorHandler.buildDepError "blank-canvas"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
        buildable = true;
        };
      exes = {
        "yampa-canvas-bouncing-balls" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blank-canvas" or (errorHandler.buildDepError "blank-canvas"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            (hsPkgs."yampa-canvas" or (errorHandler.buildDepError "yampa-canvas"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }
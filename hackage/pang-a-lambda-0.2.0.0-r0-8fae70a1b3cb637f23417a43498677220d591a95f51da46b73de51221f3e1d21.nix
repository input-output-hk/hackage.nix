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
    flags = { experiments = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "pang-a-lambda"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "";
      url = "";
      synopsis = "A super-pang clone";
      description = "An FRP implementation of superpang";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pang-a-lambda-dumbplayer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-arrowup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-stickyarrow" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-player" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-physics" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-circlingboxes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-splittingboxes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-split" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-splitballs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            ];
          buildable = true;
          };
        };
      };
    }
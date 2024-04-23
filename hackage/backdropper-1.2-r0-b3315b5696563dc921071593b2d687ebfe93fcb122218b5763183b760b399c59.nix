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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "backdropper"; version = "1.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008, Yann Golanski.";
      maintainer = "yann@kierun.org";
      author = "Yann Golanski <yann@kierun.org>";
      homepage = "";
      url = "";
      synopsis = "Rotates backdrops for X11 displays using Imagemagic.";
      description = "Rotates backdrops for X11 displays using Imagemagic.";
      buildType = "Simple";
    };
    components = {
      "library" = { buildable = true; };
      exes = {
        "backdropper_consol" = {
          depends = [
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
        };
      };
    };
  }
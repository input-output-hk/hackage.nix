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
    flags = { small_base = true; testing = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "xmonad-bluetilebranch"; version = "0.8.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Spencer Janssen";
      homepage = "http://xmonad.org";
      url = "";
      synopsis = "A tiling window manager";
      description = "This is a modified version of xmonad used by Bluetile.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = if flags.testing then false else true;
      };
      exes = {
        "xmonad" = {
          depends = pkgs.lib.optional (flags.testing) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck")) ++ pkgs.lib.optional (flags.testing && flags.small_base) (hsPkgs."random" or (errorHandler.buildDepError "random"));
          buildable = if flags.testing then true else false;
        };
      };
    };
  }
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
    flags = { use_xft = true; pedantic = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "xmonad-contrib"; version = "0.17.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xmonad@haskell.org";
      author = "Spencer Janssen & others";
      homepage = "https://xmonad.org/";
      url = "";
      synopsis = "Community-maintained extensions extensions for xmonad";
      description = "Community-maintained tiling algorithms and extension modules for xmonad,\nan X11 tiling window manager.\n\nFor an introduction to building, configuring and using xmonad\nextensions, see \"XMonad.Doc\". In particular:\n\n\"XMonad.Doc.Configuring\", a guide to configuring xmonad\n\n\"XMonad.Doc.Extending\", using the contributed extensions library\n\n\"XMonad.Doc.Developing\", introduction to xmonad internals and writing\nyour own extensions.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optional (flags.use_xft) (hsPkgs."X11-xft" or (errorHandler.buildDepError "X11-xft"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
            ];
          buildable = true;
          };
        };
      };
    }
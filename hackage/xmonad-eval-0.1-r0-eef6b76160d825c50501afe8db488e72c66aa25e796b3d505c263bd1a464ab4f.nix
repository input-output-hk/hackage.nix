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
      specVersion = "1.2.1";
      identifier = { name = "xmonad-eval"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "asgaroth_@gmx.de";
      author = "Daniel Schoepe";
      homepage = "http://xmonad.org/";
      url = "";
      synopsis = "Module for evaluation Haskell expressions in the running xmonad instance";
      description = "This modules allows the evaluation of Haskell expressions in the context of the currently\nrunning xmonad, similar to emacs' eval feature.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or (errorHandler.buildDepError "xmonad-contrib"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }
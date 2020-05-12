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
      identifier = { name = "xmonad-vanessa"; version = "2.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/xmonad-vanessa";
      url = "";
      synopsis = "Custom xmonad, which builds with stack or cabal.";
      description = "Custom xmonad example, plus several bits of functionality for managing media within XMonad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."alsa-mixer" or (errorHandler.buildDepError "alsa-mixer"))
          ];
        buildable = true;
        };
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or (errorHandler.buildDepError "xmonad-vanessa"))
            (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
            (hsPkgs."xmonad-contrib" or (errorHandler.buildDepError "xmonad-contrib"))
            (hsPkgs."xmonad-spotify" or (errorHandler.buildDepError "xmonad-spotify"))
            (hsPkgs."xmonad-volume" or (errorHandler.buildDepError "xmonad-volume"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "getkb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or (errorHandler.buildDepError "xmonad-vanessa"))
            ];
          buildable = true;
          };
        };
      tests = {
        "xmonad-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or (errorHandler.buildDepError "xmonad-vanessa"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
            ];
          buildable = true;
          };
        };
      };
    }
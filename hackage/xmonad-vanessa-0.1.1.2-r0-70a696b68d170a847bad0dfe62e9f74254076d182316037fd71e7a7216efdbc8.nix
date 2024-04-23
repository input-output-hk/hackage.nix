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
    flags = { library = true; gold = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xmonad-vanessa"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/xmonad-vanessa";
      url = "";
      synopsis = "Custom xmonad, which builds with stack or cabal.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or (errorHandler.buildDepError "xmonad-contrib"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or (errorHandler.buildDepError "xmonad-vanessa"))
          ];
          buildable = if flags.library then false else true;
        };
        "getkb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or (errorHandler.buildDepError "xmonad-vanessa"))
          ];
          buildable = if flags.library then false else true;
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
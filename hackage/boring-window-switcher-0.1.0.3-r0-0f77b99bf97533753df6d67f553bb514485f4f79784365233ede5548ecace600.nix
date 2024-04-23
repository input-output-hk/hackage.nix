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
    flags = { author-test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "boring-window-switcher"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/boring-window-switcher";
      url = "";
      synopsis = "A boring window switcher.";
      description = "A boring window switcher. See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
        ];
        buildable = true;
      };
      exes = {
        "boring-window-switcher" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boring-window-switcher" or (errorHandler.buildDepError "boring-window-switcher"))
          ];
          buildable = true;
        };
      };
      tests = {
        "author-spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boring-window-switcher" or (errorHandler.buildDepError "boring-window-switcher"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = if !flags.author-test then false else true;
        };
      };
    };
  }
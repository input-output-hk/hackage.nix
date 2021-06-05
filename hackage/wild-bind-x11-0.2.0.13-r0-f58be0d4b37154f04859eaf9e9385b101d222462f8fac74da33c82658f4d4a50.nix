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
    flags = { test-interactive = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wild-bind-x11"; version = "0.2.0.13"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/wild-bind";
      url = "";
      synopsis = "X11-specific implementation for WildBind";
      description = "X11-specific implementation for WildBind. See <https://github.com/debug-ito/wild-bind>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wild-bind" or (errorHandler.buildDepError "wild-bind"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."fold-debounce" or (errorHandler.buildDepError "fold-debounce"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wild-bind-x11" or (errorHandler.buildDepError "wild-bind-x11"))
            (hsPkgs."wild-bind" or (errorHandler.buildDepError "wild-bind"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }
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
      specVersion = "2.4";
      identifier = { name = "ghcitui"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Jordan 'Crystal' R AW";
      maintainer = "crystal@crystalwobsite.gay";
      author = "Jordan 'Crystal' R AW";
      homepage = "https://github.com/CrystalSplitter/ghcitui";
      url = "";
      synopsis = "A Terminal User Interface (TUI) for GHCi";
      description = "A terminal user interface for GHCi debug mode.\n\nFeatures:\n\n* A source view window, with debug keybindings.\n\n* Live variable bindings.\n\n* Live loaded modules.\n\n* Visible trace history.\n\n* An GHCi session in the current context.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ghcid" or (errorHandler.buildDepError "ghcid"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      sublibs = {
        "ghcitui-brick" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."ghcitui" or (errorHandler.buildDepError "ghcitui"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."word-wrap" or (errorHandler.buildDepError "word-wrap"))
            ];
          buildable = true;
          };
        };
      exes = {
        "ghcitui" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcitui".components.sublibs.ghcitui-brick or (errorHandler.buildDepError "ghcitui:ghcitui-brick"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."ghcitui" or (errorHandler.buildDepError "ghcitui"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcitui" or (errorHandler.buildDepError "ghcitui"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
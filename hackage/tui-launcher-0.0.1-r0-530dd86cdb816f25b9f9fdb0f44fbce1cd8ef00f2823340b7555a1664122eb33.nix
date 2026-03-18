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
      specVersion = "3.8";
      identifier = { name = "tui-launcher"; version = "0.0.1"; };
      license = "MIT";
      copyright = "2026 tritlo";
      maintainer = "tritlo";
      author = "tritlo";
      homepage = "https://github.com/TharkunAB/tui-launcher";
      url = "";
      synopsis = "Small Brick-based terminal launcher";
      description = "@tui-launcher@ is a small terminal launcher built with @brick@.\n.\nIt reads a TOML config file, shows entries as a keyboard- and mouse-driven\ntile menu, and replaces itself with the selected command.\n.\nFeatures include:\n.\n* TOML configuration with auto-created default config\n* Per-entry @working-dir@, @shell-program@, @shell-login@, and @color@\n* Arrow-key and @hjkl@ navigation\n* Mouse selection and scrolling\n* Configurable tile width, height, and spacing";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tui-launcher" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-crossplatform" or (errorHandler.buildDepError "vty-crossplatform"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tui-launcher-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
            (hsPkgs."tuispec" or (errorHandler.buildDepError "tuispec"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-crossplatform" or (errorHandler.buildDepError "vty-crossplatform"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tui-launcher.components.exes.tui-launcher or (pkgs.pkgsBuildBuild.tui-launcher or (errorHandler.buildToolDepError "tui-launcher:tui-launcher")))
          ];
          buildable = true;
        };
      };
    };
  }
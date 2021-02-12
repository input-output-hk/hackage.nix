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
    flags = { dynamic = true; vty = true; gtk = true; cocoa = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "yi"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "http://haskell.org/haskellwiki/Yi";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written and extensible in Haskell. The goal of Yi is\nto provide a flexible, powerful, and correct editor core which is dynamically\nscriptable in Haskell.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "yi" = {
          depends = ((([
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            ] ++ (pkgs.lib).optional (flags.dynamic) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or (errorHandler.buildDepError "vty"))) ++ (pkgs.lib).optional (flags.gtk) (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))) ++ (pkgs.lib).optionals (flags.cocoa) [
            (hsPkgs."HOC" or (errorHandler.buildDepError "HOC"))
            (hsPkgs."HOC-AppKit" or (errorHandler.buildDepError "HOC-AppKit"))
            (hsPkgs."HOC-Foundation" or (errorHandler.buildDepError "HOC-Foundation"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
            ];
          buildable = if !(flags.vty || flags.gtk || flags.cocoa)
            then false
            else true;
          };
        };
      };
    }
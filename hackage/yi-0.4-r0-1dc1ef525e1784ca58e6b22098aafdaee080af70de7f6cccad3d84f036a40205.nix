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
    flags = {
      ghcapi = false;
      vty = true;
      gtk = true;
      pango = true;
      cocoa = true;
      testing = true;
      };
    package = {
      specVersion = "1.4";
      identifier = { name = "yi"; version = "0.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "http://haskell.org/haskellwiki/Yi";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written in Haskell and extensible in Haskell. The goal of the Yi project is\nto provide a flexible, powerful, and correct editor for haskell hacking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or (errorHandler.buildDepError "vty"));
        buildable = true;
        };
      exes = {
        "yi" = {
          depends = (((((([
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or (errorHandler.buildDepError "vty"))) ++ (pkgs.lib).optional (flags.gtk) (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))) ++ (pkgs.lib).optional (flags.pango) (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))) ++ (pkgs.lib).optionals (flags.cocoa) [
            (hsPkgs."HOC" or (errorHandler.buildDepError "HOC"))
            (hsPkgs."HOC-AppKit" or (errorHandler.buildDepError "HOC-AppKit"))
            (hsPkgs."HOC-Foundation" or (errorHandler.buildDepError "HOC-Foundation"))
            ]) ++ (pkgs.lib).optionals (flags.ghcapi) [
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            ]) ++ (pkgs.lib).optional (flags.testing) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
            ];
          buildable = if !(flags.vty || flags.gtk || flags.cocoa)
            then false
            else true;
          };
        };
      };
    }
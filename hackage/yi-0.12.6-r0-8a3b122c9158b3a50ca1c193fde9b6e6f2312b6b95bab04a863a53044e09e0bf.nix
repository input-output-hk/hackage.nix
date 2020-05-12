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
      pango = false;
      vty = true;
      profiling = false;
      eventlog = false;
      testing = true;
      hint = true;
      };
    package = {
      specVersion = "1.20";
      identifier = { name = "yi"; version = "0.12.6"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "https://yi-editor.github.io";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written in Haskell and extensible in Haskell. The goal of the Yi project is\nto provide a flexible, powerful, and correct editor for haskell hacking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((([
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dynamic-state" or (errorHandler.buildDepError "dynamic-state"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pointedlist" or (errorHandler.buildDepError "pointedlist"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."word-trie" or (errorHandler.buildDepError "word-trie"))
          (hsPkgs."yi-language" or (errorHandler.buildDepError "yi-language"))
          (hsPkgs."oo-prototypes" or (errorHandler.buildDepError "oo-prototypes"))
          (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."Hclip" or (errorHandler.buildDepError "Hclip"))
          ] ++ (pkgs.lib).optional (flags.hint) (hsPkgs."hint" or (errorHandler.buildDepError "hint"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))) ++ (pkgs.lib).optionals (flags.testing) [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ]) ++ (pkgs.lib).optionals (flags.pango) [
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
          ]) ++ (pkgs.lib).optionals (flags.vty) [
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      exes = {
        "yi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yi" or (errorHandler.buildDepError "yi"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."yi-language" or (errorHandler.buildDepError "yi-language"))
            (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
            (hsPkgs."yi" or (errorHandler.buildDepError "yi"))
            ];
          buildable = true;
          };
        };
      };
    }
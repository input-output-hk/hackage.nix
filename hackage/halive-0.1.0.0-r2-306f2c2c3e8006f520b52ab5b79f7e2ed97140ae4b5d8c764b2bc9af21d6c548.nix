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
      identifier = { name = "halive"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "lukexi@me.com";
      author = "Luke Iannini";
      homepage = "tree.is";
      url = "";
      synopsis = "A live recompiler";
      description = "Live recompiler for Haskell\n\n<http://lukexi.github.io/HaliveDemo.gif Halive Demo>\n\nHalive uses the GHC API to instantly recompile\nand reload your code any time you change it.\n\nUsage:\n> halive <path/to/mymain.hs> <extra-include-dirs>\n\nAny time you change a file in the current directory or its\nsubdirectories,\nhalive will recompile and rerun the 'main' function in the file you gave\nit.\n\nIf the program is long-running (e.g. a daemon, GUI or game loop) it will\nbe\nkilled and restarted. Learn how to maintain state in the next section.\n\nTry a live-coding GL demo by running 'halive demo/Main.hs' (in the\nsource package)\nand changing values in 'Main.hs' and 'Green.hs'\n(requires 'gl', 'GLFW-b', 'foreign-store', 'linear', and 'random').\n\n/Keeping values alive/\n\nTo keep state alive, import 'Halive.Utils' and wrap\nyour value in 'reacquire' along with a unique identifier, like:\n\n> win <- reacquire 0 (setupGLFW \\\"HotGLFW\\\" 640 480)\n\nto only create the resource the first time you run the program, and then\nreuse it on subsequent recompilations.\n\nYou can see this in action in 'test/glfw.hs'.\n\nThanks to Chris Done's\n<https://hackage.haskell.org/package/foreign-store foreign-store>\nlibrary for enabling this.\n\n/Notes/\n\nCreating, updating, and deleting modules in the include path should\nwork fine during a Halive session.\n\nHalive also supports Cabal sandboxes;\nif run within a directory containing a cabal.sandbox.config file it will\nuse the package database defined therein.\n\nHalive also works nicely with either batch-processing or run-loop type\nprograms — if the program finishes, it will be restarted on next save,\nand if it's still running, it will be killed and restarted on save.\n\nTo kill Halive during run-loop type programs, you may need to hold down\nCtrl-C\nto get GHC to recognize the double-Control-C-kill sequence.\n\n<http://twitter.com/lukexi @lukexi>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."foreign-store" or (errorHandler.buildDepError "foreign-store"))
        ];
        buildable = true;
      };
      exes = {
        "halive" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."bin-package-db" or (errorHandler.buildDepError "bin-package-db"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          ];
          buildable = true;
        };
      };
    };
  }
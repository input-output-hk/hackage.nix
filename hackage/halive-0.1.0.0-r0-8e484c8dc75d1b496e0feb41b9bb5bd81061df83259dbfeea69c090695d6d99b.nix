{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "> ██╗  ██╗ █████╗ ██╗     ██╗██╗   ██╗███████╗\n> ██║  ██║██╔══██╗██║     ██║██║   ██║██╔════╝\n> ███████║███████║██║     ██║██║   ██║█████╗\n> ██╔══██║██╔══██║██║     ██║╚██╗ ██╔╝██╔══╝\n> ██║  ██║██║  ██║███████╗██║ ╚████╔╝ ███████╗\n> ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝  ╚══════╝\nLive recompiler for Haskell\n<<http://lukexi.github.io/HaliveDemo.gif Halive Demo>>\nHalive uses the GHC API to instantly recompile\nand reload your code any time you change it.\nUsage:\n@cabal install@\nand then\n@halive \\<path\\/to\\/mymain.hs> \\<extra-include-dirs>@\nAny time you change a file in the current directory or its\nsubdirectories,\nhalive will recompile and rerun the @main@ function in the file you gave\nit.\nIf the program is long-running (e.g. a daemon, GUI or game loop) it will\nbe\nkilled and restarted. Learn how to maintain state in the next section.\nTry a live-coding GL demo by running @halive demo\\/Main.hs@ (in the\nsource package)\nand changing values in @Main.hs@ and @Green.hs@\n(requires @gl@, @GLFW-b@, @foreign-store@, @linear@, and @random@).\n== Keeping values alive\n#keeping-values-alive#\nTo keep state alive, import @Halive.Utils@ and wrap\nyour value in @reacquire@ along with a unique identifier, like:\n@win \\<- reacquire 0 (setupGLFW \\\"HotGLFW\\\" 640 480)@\nto only create the resource the first time you run the program, and then\nreuse it on subsequent recompilations.\nYou can see this in action in @test\\/glfw.hs@.\nThanks to Chris Done\\'s\n<https://hackage.haskell.org/package/foreign-store @foreign-store@>\nlibrary for enabling this.\n== Notes\n#notes#\nCreating, updating, and deleting modules in the include path should\nwork fine during a Halive session.\nHalive also supports Cabal sandboxes;\nif run within a directory containing a cabal.sandbox.config file it will\nuse the package database defined therein.\nHalive also works nicely with either batch-processing or run-loop type\nprograms — if the program finishes, it will be restarted on next save,\nand if it\\'s still running, it will be killed and restarted on save.\nTo kill Halive during run-loop type programs, you may need to hold down\nCtrl-C\nto get GHC to recognize the double-Control-C-kill sequence.\n<http://twitter.com/lukexi \\@lukexi>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."foreign-store" or ((hsPkgs.pkgs-errors).buildDepError "foreign-store"))
          ];
        buildable = true;
        };
      exes = {
        "halive" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."bin-package-db" or ((hsPkgs.pkgs-errors).buildDepError "bin-package-db"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            ];
          buildable = true;
          };
        };
      };
    }
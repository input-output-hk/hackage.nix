let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "@\n> ██╗  ██╗ █████╗ ██╗     ██╗██╗   ██╗███████╗\n> ██║  ██║██╔══██╗██║     ██║██║   ██║██╔════╝\n> ███████║███████║██║     ██║██║   ██║█████╗\n> ██╔══██║██╔══██║██║     ██║╚██╗ ██╔╝██╔══╝\n> ██║  ██║██║  ██║███████╗██║ ╚████╔╝ ███████╗\n> ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝  ╚══════╝\n@\nLive recompiler for Haskell\n\n<<http://lukexi.github.io/HaliveDemo.gif Halive Demo>>\n\nHalive uses the GHC API to instantly recompile\nand reload your code any time you change it.\n\nUsage:\n@cabal install@\n\nand then\n\n@halive \\<path\\/to\\/mymain.hs> \\<extra-include-dirs>@\n\nAny time you change a file in the current directory or its\nsubdirectories,\nhalive will recompile and rerun the @main@ function in the file you gave\nit.\n\nIf the program is long-running (e.g. a daemon, GUI or game loop) it will\nbe\nkilled and restarted. Learn how to maintain state in the next section.\n\nTry a live-coding GL demo by running @halive demo\\/Main.hs@ (in the\nsource package)\nand changing values in @Main.hs@ and @Green.hs@\n(requires @gl@, @GLFW-b@, @foreign-store@, @linear@, and @random@).\n\n== Keeping values alive\n\nTo keep state alive, import @Halive.Utils@ and wrap\nyour value in @reacquire@ along with a unique identifier, like:\n\n@win \\<- reacquire 0 (setupGLFW \\\"HotGLFW\\\" 640 480)@\n\nto only create the resource the first time you run the program, and then\nreuse it on subsequent recompilations.\n\nYou can see this in action in @test\\/glfw.hs@.\n\nThanks to Chris Done\\'s\n<https://hackage.haskell.org/package/foreign-store @foreign-store@>\nlibrary for enabling this.\n\n== Notes\n\nCreating, updating, and deleting modules in the include path should\nwork fine during a Halive session.\n\nHalive also supports Cabal sandboxes;\nif run within a directory containing a cabal.sandbox.config file it will\nuse the package database defined therein.\n\nHalive also works nicely with either batch-processing or run-loop type\nprograms — if the program finishes, it will be restarted on next save,\nand if it\\'s still running, it will be killed and restarted on save.\n\nTo kill Halive during run-loop type programs, you may need to hold down\nCtrl-C\nto get GHC to recognize the double-Control-C-kill sequence.\n\n<http://twitter.com/lukexi \\@lukexi>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."foreign-store" or (buildDepError "foreign-store"))
          ];
        };
      exes = {
        "halive" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."bin-package-db" or (buildDepError "bin-package-db"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            ];
          };
        };
      };
    }
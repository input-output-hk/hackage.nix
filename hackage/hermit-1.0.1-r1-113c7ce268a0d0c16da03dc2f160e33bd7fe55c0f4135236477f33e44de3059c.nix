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
      specVersion = "1.12";
      identifier = { name = "hermit"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Farmer <afarmer@ittc.ku.edu>";
      author = "Andrew Farmer, Andy Gill, Ed Komp, Neil Sculthorpe";
      homepage = "";
      url = "";
      synopsis = "Haskell Equational Reasoning Model-to-Implementation Tunnel";
      description = "HERMIT is a Haskell-specific toolkit designed to mechanize\nequational reasoning and program transformation during compilation in GHC.\n\nExamples can be found in the examples sub-directory.\n\n@\n$ cd examples/reverse\n@\n\nExample of running a script.\n\n@\n$ hermit Reverse.hs Reverse.hss resume\n[starting HERMIT v1.0.1 on Reverse.hs]\n% ghc Reverse.hs -fforce-recomp -O2 -dcore-lint -fexpose-all-unfoldings -fsimple-list-literals -fplugin=HERMIT -fplugin-opt=HERMIT:Main:Reverse.hss -fplugin-opt=HERMIT:Main:resume\n[1 of 2] Compiling HList            ( HList.hs, HList.o )\nLoading package ghc-prim ... linking ... done.\n...\nLoading package hermit-1.0.1 ... linking ... done.\n[2 of 2] Compiling Main             ( Reverse.hs, Reverse.o )\nLinking Reverse ...\n$ ./Reverse\n....\n@\n\nExample of interactive use.\n\n@\n$ hermit Reverse.hs\n[starting HERMIT v1.0.1 on Reverse.hs]\n% ghc Reverse.hs -fforce-recomp -O2 -dcore-lint -fexpose-all-unfoldings -fsimple-list-literals -fplugin=HERMIT -fplugin-opt=HERMIT:*:\n[1 of 2] Compiling HList            ( HList.hs, HList.o )\nLoading package ghc-prim ... linking ... done.\n...\nLoading package hermit-1.0.1 ... linking ... done.\n[2 of 2] Compiling Main             ( Reverse.hs, Reverse.o )\n===================== Welcome to HERMIT =====================\nHERMIT is a toolkit for the interactive transformation of GHC\ncore language programs. Documentation on HERMIT can be found\non the HERMIT web page at:\nhttp:\\/\\/www.ittc.ku.edu\\/csdl\\/fpg\\/software\\/hermit.html\n\nYou have just loaded the interactive shell. To exit, type\n\\\"abort\\\" or \\\"resume\\\" to abort or resume GHC compilation.\n\nType \\\"help\\\" for instructions on how to list or search the\navailable HERMIT commands.\n\nTo get started, you could try the following:\n\\ \\ - type \\\"binding-of 'foo\\\", where \\\"foo\\\" is a function\n\\ \\ \\ \\ defined in the module;\n\\ \\ - type \\\"set-pp-type Show\\\" to switch on typing information;\n\\ \\ - use natural numbers such as \\\"0\\\" and \\\"1\\\" to descend into\n\\ \\ \\ \\ the definition, and \\\"up\\\" to ascend;\n\\ \\ - type \\\"info\\\" for more information about the current node;\n\\ \\ - type \\\"log\\\" to display an activity log.\n=============================================================\nmodule main:Main where\n\\ \\ rev ∷ ∀ a . [a] -> [a]\n\\ \\ unwrap ∷ ∀ a . ([a] -> [a]) -> [a] -> H a\n\\ \\ wrap ∷ ∀ a . ([a] -> H a) -> [a] -> [a]\n\\ \\ main ∷ IO ()\n\\ \\ main ∷ IO ()\nhermit\\<0\\>\n...\n@\n\nTo resume compilation, use resume.\n\n@\n...\nhermit\\<0\\> resume\nhermit\\<0\\> Linking Reverse ...\n$\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."kure" or (errorHandler.buildDepError "kure"))
          (hsPkgs."marked-pretty" or (errorHandler.buildDepError "marked-pretty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
        buildable = true;
        };
      exes = {
        "hermit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hermit" or (errorHandler.buildDepError "hermit"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hermit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."hermit" or (errorHandler.buildDepError "hermit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      };
    }
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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "harpy"; version = "0.4.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "klee@cs.tu-berlin.de, martin.grabmueller@eleven.de";
      author = "Dirk Kleeblatt <klee@cs.tu-berlin.de>\nMartin Grabmueller <martin.grabmueller@eleven.de>";
      homepage = "http://uebb.cs.tu-berlin.de/harpy/";
      url = "";
      synopsis = "Runtime code generation for x86 machine code";
      description = "The package contains the following components:\n\n* An x86 assembler.  We provide both low-level code generation in\nmodule \"Harpy.X86CodeGen\" as well as a (slightly) higher-level\nimplementation in module \"Harpy.X86Assembler\", which figures out\naddressing modes based on an instruction's operand types.\n\n* An x86 disassembler which knows most of the opcodes available on\nmodern x86 processors and can display its output both in the style\nused in Intel documents an in AT&T style, like the GNU tools. The\ndisassembler can be found in module \"Harpy.X86Disassembler\".  The\ndisassembler is re-exported from the disassembler package for\ncompatibility with earlier Harpy releases.\n\n* Some abstractions over the abovementioned code generation modules,\nsuch as automatic label management and code generation\ncombinators (for if-then-else statements, while-loops, functions)\n(module \"Harpy.X86CGCombinators\").\n\n* All the above modules use the code generation monad defined in module\n\"Harpy.CodeGenMonad\".\n\n* The Darcs repo and two tutorials on using Harpy can be found at\nHarpy's homepage: <http://uebb.cs.tu-berlin.de/harpy/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."disassembler" or (errorHandler.buildDepError "disassembler"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ]);
        buildable = true;
        };
      };
    }
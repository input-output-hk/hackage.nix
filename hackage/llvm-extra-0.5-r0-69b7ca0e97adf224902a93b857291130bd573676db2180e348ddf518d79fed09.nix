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
    flags = { buildexamples = false; buildtools = false; cpuid = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "llvm-extra"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/llvm-extra/";
      url = "";
      synopsis = "Utility functions for the llvm interface";
      description = "The Low-Level Virtual-Machine is a compiler back-end with optimizer.\nYou may also call it a high-level portable assembler.\nThis package provides various utility functions\nfor the Haskell interface to LLVM, for example:\n\n* arithmetic operations with more general types\nbut better type inference than the @llvm@ interface\nin \"LLVM.Extra.Arithmetic\",\n\n* a type class for loading and storing sets of values with one command (macro)\nin \"LLVM.Extra.Memory\",\n\n* support instance declarations of LLVM classes\nin \"LLVM.Extra.Class\",\n\n* handling of termination by a custom monad on top of @CodeGenFunction@\nin \"LLVM.Extra.MaybeContinuation\"\n\n* various kinds of loops (while) and condition structures (if-then-else)\nin \"LLVM.Extra.Control\"\n\n* automatic adaption to target specific extensions,\ncurrently used for access of vector operations\nthat are specific to an SSE level on x86 processors\nin \"LLVM.Extra.Extension\"\n(On x86 architectures we depend on the cpuid package\nthat is needed for automatic detection of available features.)\n\n* advanced vector operations\nsuch as sum of all vector elements, cumulative sum,\nfloor, non-negative fraction, absolute value\nin \"LLVM.Extra.Vector\"\n\n* type classes for handling scalar and vector operations\nin a uniform way\nin \"LLVM.Extra.ScalarOrVector\"\n\n* a Makefile and a description\nof how to run LLVM code from within GHCi.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
          (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optionals ((system.isI386 || system.isX86_64) && flags.cpuid) [
          (hsPkgs."unsafe" or (errorHandler.buildDepError "unsafe"))
          (hsPkgs."cpuid" or (errorHandler.buildDepError "cpuid"))
        ];
        buildable = true;
      };
      exes = {
        "tone-llvm" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-extra" or (errorHandler.buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "prepare-intrinsics" = {
          depends = pkgs.lib.optionals (flags.buildtools) [
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildtools then true else false;
        };
      };
    };
  }
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
    flags = { buildtools = false; cpuid = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "llvm-extension"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://wiki.haskell.org/LLVM";
      url = "";
      synopsis = "Processor specific intrinsics for the llvm interface";
      description = "The Low-Level Virtual-Machine is a compiler back-end with optimizer.\nYou may also call it a high-level portable assembler.\nLLVM provides processor specific instructions via so-called intrinsics.\nThis package allows you to use such instructions,\nwhile also defining fallbacks for older versions of a processor\nand different architectures.\n\nWe provide an auto-generated list of intrinsics\nfor special SSE+AVX instructions on the X86 target.\nOn x86 architectures we depend on the cpuid package\nfor automatic detection of available features.\nThis works when using JIT or native compilation,\nbut it fails for cross-compilation.\n\nFormerly, this package was part of the @llvm-extra@ package.\nBut the names of intrinsics change between LLVM versions without notification.\nIntrinsics for processor specific instructions are considered a last resort.\nIn current LLVM versions all functions I needed so far\nare available as generic intrinsics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."llvm-extra" or (errorHandler.buildDepError "llvm-extra"))
          (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
          (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."prelude-compat" or (errorHandler.buildDepError "prelude-compat"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optionals ((system.isI386 || system.isX86_64) && flags.cpuid) [
          (hsPkgs."unsafe" or (errorHandler.buildDepError "unsafe"))
          (hsPkgs."cpuid" or (errorHandler.buildDepError "cpuid"))
          ];
        buildable = true;
        };
      exes = {
        "prepare-intrinsics" = {
          depends = (pkgs.lib).optionals (flags.buildtools) [
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
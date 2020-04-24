{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."llvm-extra" or ((hsPkgs.pkgs-errors).buildDepError "llvm-extra"))
          (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
          (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
          (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."prelude-compat" or ((hsPkgs.pkgs-errors).buildDepError "prelude-compat"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (pkgs.lib).optionals ((system.isI386 || system.isX86_64) && flags.cpuid) [
          (hsPkgs."unsafe" or ((hsPkgs.pkgs-errors).buildDepError "unsafe"))
          (hsPkgs."cpuid" or ((hsPkgs.pkgs-errors).buildDepError "cpuid"))
          ];
        buildable = true;
        };
      exes = {
        "prepare-intrinsics" = {
          depends = (pkgs.lib).optionals (flags.buildtools) [
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildtools then true else false;
          };
        };
      };
    }
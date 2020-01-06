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
          (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
          (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
          (hsPkgs."tfp" or (buildDepError "tfp"))
          (hsPkgs."non-empty" or (buildDepError "non-empty"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."prelude-compat" or (buildDepError "prelude-compat"))
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optionals ((system.isI386 || system.isX86_64) && flags.cpuid) [
          (hsPkgs."unsafe" or (buildDepError "unsafe"))
          (hsPkgs."cpuid" or (buildDepError "cpuid"))
          ];
        buildable = true;
        };
      exes = {
        "prepare-intrinsics" = {
          depends = (pkgs.lib).optionals (flags.buildtools) [
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildtools then true else false;
          };
        };
      };
    }
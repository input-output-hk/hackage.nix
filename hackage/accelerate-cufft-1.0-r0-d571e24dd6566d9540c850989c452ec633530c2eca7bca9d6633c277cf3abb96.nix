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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "accelerate-cufft"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/accelerate-cufft/";
      url = "";
      synopsis = "Accelerate frontend to the CUFFT library (Fourier transform)";
      description = "An interface for the @accelerate@ framework\nto the Fourier Transform library @cufft@\nprovided by Nvidia for their CUDA enabled graphic cards.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."cufft" or (buildDepError "cufft"))
          (hsPkgs."cuda" or (buildDepError "cuda"))
          (hsPkgs."accelerate-fourier" or (buildDepError "accelerate-fourier"))
          (hsPkgs."accelerate-utility" or (buildDepError "accelerate-utility"))
          (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"))
          (hsPkgs."accelerate" or (buildDepError "accelerate"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "accelerate-cufft-demo" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."accelerate-cufft" or (buildDepError "accelerate-cufft"))
            (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "accelerate-cufft-demo-merged" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."cufft" or (buildDepError "cufft"))
            (hsPkgs."cuda" or (buildDepError "cuda"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "accelerate-cufft-demo-separate" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."accelerate-llvm-ptx" or (buildDepError "accelerate-llvm-ptx"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."cufft" or (buildDepError "cufft"))
            (hsPkgs."cuda" or (buildDepError "cuda"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "cufft-demo" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."cufft" or (buildDepError "cufft"))
            (hsPkgs."cuda" or (buildDepError "cuda"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }
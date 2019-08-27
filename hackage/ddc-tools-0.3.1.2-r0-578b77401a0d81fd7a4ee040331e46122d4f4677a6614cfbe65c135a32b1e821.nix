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
      specVersion = "1.6";
      identifier = { name = "ddc-tools"; version = "0.3.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler command line tools.";
      description = "Disciplined Disciple Compiler command line tools.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "ddc-check" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ddc-core" or (buildDepError "ddc-core"))
            ];
          };
        "ddc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."ddc-base" or (buildDepError "ddc-base"))
            (hsPkgs."ddc-core" or (buildDepError "ddc-core"))
            (hsPkgs."ddc-core-eval" or (buildDepError "ddc-core-eval"))
            (hsPkgs."ddc-core-simpl" or (buildDepError "ddc-core-simpl"))
            (hsPkgs."ddc-core-salt" or (buildDepError "ddc-core-salt"))
            (hsPkgs."ddc-core-llvm" or (buildDepError "ddc-core-llvm"))
            (hsPkgs."ddc-build" or (buildDepError "ddc-build"))
            (hsPkgs."ddc-code" or (buildDepError "ddc-code"))
            (hsPkgs."ddc-driver" or (buildDepError "ddc-driver"))
            ];
          };
        "ddci-core" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ddc-base" or (buildDepError "ddc-base"))
            (hsPkgs."ddc-core" or (buildDepError "ddc-core"))
            (hsPkgs."ddc-core-eval" or (buildDepError "ddc-core-eval"))
            (hsPkgs."ddc-core-simpl" or (buildDepError "ddc-core-simpl"))
            (hsPkgs."ddc-core-salt" or (buildDepError "ddc-core-salt"))
            (hsPkgs."ddc-core-llvm" or (buildDepError "ddc-core-llvm"))
            (hsPkgs."ddc-build" or (buildDepError "ddc-build"))
            (hsPkgs."ddc-driver" or (buildDepError "ddc-driver"))
            ];
          };
        };
      };
    }
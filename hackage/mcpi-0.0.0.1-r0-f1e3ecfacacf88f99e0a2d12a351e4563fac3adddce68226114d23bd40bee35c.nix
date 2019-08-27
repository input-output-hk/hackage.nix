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
    flags = { build-examples = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "mcpi"; version = "0.0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "dburke.gw@gmail.com";
      author = "Douglas Burke (dburke.gw@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Connect to MineCraft running on a Raspberry PI.";
      description = "The MineCraft edition for Raspberry PI comes with a Java and\nPython API.\n\nThis is a *very* basic, and *incomplete* Haskell version. I\nfully expect everything to change in later versions.\n\nTwo very simple examples are included in the examples/ directory,\nas well as a way to interact with MineCraft directly.\n\nPlease see the TODO file in the source code for an incomplete\nlist of possible changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "flatten" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mcpi" or (buildDepError "mcpi"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "freefall" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mcpi" or (buildDepError "mcpi"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "hmcpi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            ];
          };
        "isongold" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mcpi" or (buildDepError "mcpi"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }
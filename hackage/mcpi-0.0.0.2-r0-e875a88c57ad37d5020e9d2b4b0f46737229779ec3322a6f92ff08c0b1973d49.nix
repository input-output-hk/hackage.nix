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
      identifier = { name = "mcpi"; version = "0.0.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "dburke.gw@gmail.com";
      author = "Douglas Burke (dburke.gw@gmail.com)";
      homepage = "https://github.com/DougBurke/hmcpi";
      url = "";
      synopsis = "Connect to MineCraft running on a Raspberry PI.";
      description = "The MineCraft edition for Raspberry PI comes with a Java and\nPython API. See \"Network.MineCraft.Pi.Client\" for a basic\nexample.\n\nThis is a *very* basic, and *incomplete* Haskell version. I\nfully expect everything to change in later versions.\n\nA number of very simple examples are included in the examples/ directory,\nas well as a program that lets you interact with MineCraft directly.\n\nPlease see the TODO.md file in the source code for an incomplete\nlist of possible changes, and the CHANGES.md file for changes\nin the module.";
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
        buildable = true;
        };
      exes = {
        "flatten" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mcpi" or (buildDepError "mcpi"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "freefall" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mcpi" or (buildDepError "mcpi"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "hmcpi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "isongold" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mcpi" or (buildDepError "mcpi"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "xjump" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mcpi" or (buildDepError "mcpi"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      };
    }
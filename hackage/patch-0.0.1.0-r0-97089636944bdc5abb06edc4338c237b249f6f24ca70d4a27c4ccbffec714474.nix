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
    flags = { split-these = true; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "patch"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maintainer@obsidian.systems";
      author = "Ryan Trinkle";
      homepage = "https://obsidian.systems";
      url = "";
      synopsis = "Infrastructure for writing patches which act on other types.";
      description = "In this library, a patch is something which can be applied, analogous to a\nfunction, and which distinguishes returning the argument it was provided from\nreturning something else.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints-extras" or (buildDepError "constraints-extras"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."witherable" or (buildDepError "witherable"))
          ] ++ (if flags.split-these
          then [
            (hsPkgs."these" or (buildDepError "these"))
            (hsPkgs."semialign" or (buildDepError "semialign"))
            (hsPkgs."monoidal-containers" or (buildDepError "monoidal-containers"))
            ]
          else [
            (hsPkgs."these" or (buildDepError "these"))
            (hsPkgs."monoidal-containers" or (buildDepError "monoidal-containers"))
            ]);
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      };
    }
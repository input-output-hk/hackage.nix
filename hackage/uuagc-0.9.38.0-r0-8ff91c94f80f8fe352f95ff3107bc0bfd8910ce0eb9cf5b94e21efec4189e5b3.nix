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
    flags = { compatibility1 = true; compatibility2 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "uuagc"; version = "0.9.38.0"; };
      license = "LicenseRef-GPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "Attribute Grammar System of Universiteit Utrecht";
      description = "Generates Haskell files from an attribute grammar specification";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."uulib" or (buildDepError "uulib"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = {
        "uuagc" = {
          depends = ([
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."uulib" or (buildDepError "uulib"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            ] ++ (if flags.compatibility1
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              ])) ++ (if flags.compatibility2
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."array" or (buildDepError "array"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          };
        };
      };
    }
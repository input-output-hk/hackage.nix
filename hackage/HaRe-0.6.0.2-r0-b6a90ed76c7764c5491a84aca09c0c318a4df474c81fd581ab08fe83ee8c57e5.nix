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
      identifier = { name = "HaRe"; version = "0.6.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Brown";
      author = "Chris Brown, Huiqing Li, Simon Thompson";
      homepage = "http://www.cs.kent.ac.uk/projects/refactor-fp";
      url = "";
      synopsis = "the Haskell Refactorer.";
      description = "A full Haskell 98 refactoring tool. HaRe supports the full Haskell 98 standard, implemented in Haskell and supporting Emacs and VIm.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hare-evaluate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hare" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hare-client" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        };
      };
    }
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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "c2hs"; version = "0.15.1"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) [1999..2007] Manuel M T Chakravarty";
      maintainer = "chak@cse.unsw.edu.au, duncan@haskell.org";
      author = "Manuel M T Chakravarty";
      homepage = "http://www.cse.unsw.edu.au/~chak/haskell/c2hs/";
      url = "";
      synopsis = "C->Haskell Interface Generator";
      description = "C->Haskell assists in the development of Haskell bindings to C\nlibraries.  It extracts C interface information from vanilla header\nfiles and generates marshaling and signature code in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "c2hs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."pretty" or (buildDepError "pretty"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          };
        };
      };
    }
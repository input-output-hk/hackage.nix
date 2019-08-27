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
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hask-home"; version = "2007.12.6"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert 2006";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "http://www.cs.chalmers.se/~bringert/darcs/hask-home/doc/";
      url = "";
      synopsis = "Generate homepages for cabal packages";
      description = "This program generates simple homepages for cabalized\nHaskell packages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hask-home" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."hmarkup" or (buildDepError "hmarkup"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            ] ++ (if flags.split-base
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."directory" or (buildDepError "directory"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          };
        "hask-home-upload" = {
          depends = if flags.split-base
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."process" or (buildDepError "process"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        };
      };
    }
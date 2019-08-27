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
    flags = { darcs-beta = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "ipatch"; version = "0.1.1"; };
      license = "GPL-2.0-only";
      copyright = "2010 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "http://darcs.nomeata.de/ipatch";
      url = "";
      synopsis = "interactive patch editor";
      description = "ipatch brings the power and convenience of selecting and editing patches in\nDarcs to those who are not using the Darcs version control system.\n\nIt allows the user to interactively split a patch file into several patch\nfile, as well as applying a patch interactively and possibly partially.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ipatch" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."hashed-storage" or (buildDepError "hashed-storage"))
            ] ++ (if flags.darcs-beta
            then [ (hsPkgs."darcs-beta" or (buildDepError "darcs-beta")) ]
            else [ (hsPkgs."darcs" or (buildDepError "darcs")) ]);
          };
        };
      };
    }
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
      specVersion = "1.2";
      identifier = { name = "thimk"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2010 Bart Massey";
      maintainer = "bart@cs.pdx.edu";
      author = "Bart Massey";
      homepage = "http://wiki.cs.pdx.edu/bartforge/thimk";
      url = "http://wiki.cs.pdx.edu/cabal-packages/thimk-0.3.tar.gz";
      synopsis = "Command-line spelling word suggestion tool";
      description = "\"thimk\" (an old joke) is a command-line spelling word\nsuggestion tool.  You give it a possibly-misspelled word,\nand it spits out one or more properly-spelled words in order\nof likelihood of similarity.\n\nThe latest change to the implementation is an addition\nof an optional precompiled SQlite database of phonetic\ncodes for the entire dictionary, created with\n\"thimk-makedb\".  This greatly speeds lookup, permitting\nreasonable performance on enormous dictionaries.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "thimk" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parseargs" or (buildDepError "parseargs"))
            (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
            (hsPkgs."phonetic-code" or (buildDepError "phonetic-code"))
            (hsPkgs."sqlite" or (buildDepError "sqlite"))
            ];
          };
        "thimk-makedb" = {
          depends = [
            (hsPkgs."parseargs" or (buildDepError "parseargs"))
            (hsPkgs."sqlite" or (buildDepError "sqlite"))
            (hsPkgs."phonetic-code" or (buildDepError "phonetic-code"))
            ];
          };
        };
      };
    }
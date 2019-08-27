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
    flags = { debug = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "spelling-suggest"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2010 Bart Massey and Greg Weber";
      maintainer = "bart@cs.pdx.edu, greg@gregweber.info";
      author = "Bart Massey and Greg Weber";
      homepage = "http://wiki.cs.pdx.edu/bartforge/thimk";
      url = "";
      synopsis = "Spelling suggestion tool with library and command-line interfaces.";
      description = "Given a possibly-misspelled word,\nthis tool spits out one or more properly-spelled words in order\nof likelihood of similarity.\n\nThis functionality is exported as a library via\nText.SpellingSuggest (suggest) and as\na command-line program \"thimk\" (an old joke)\n\nRunning the program \"thimk-makedb\" is an optional (but highly recommended)\nstep to speed up lookups,\npermitting reasonable performance on enormous dictionaries\nby creating a\nprecompiled SQlite database of phonetic\ncodes for a dictionary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
          (hsPkgs."phonetic-code" or (buildDepError "phonetic-code"))
          (hsPkgs."sqlite" or (buildDepError "sqlite"))
          ];
        };
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parseargs" or (buildDepError "parseargs"))
            (hsPkgs."phonetic-code" or (buildDepError "phonetic-code"))
            (hsPkgs."sqlite" or (buildDepError "sqlite"))
            ];
          };
        };
      };
    }
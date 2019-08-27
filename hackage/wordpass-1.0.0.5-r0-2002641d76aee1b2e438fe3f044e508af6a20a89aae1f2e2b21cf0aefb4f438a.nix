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
      specVersion = "1.10";
      identifier = { name = "wordpass"; version = "1.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Michal J. Gajda";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/wordpass";
      url = "";
      synopsis = "Dictionary-based password generator";
      description = "This script reads dict word lists and generates word-based passwords.\nNot unlike <http://xkcd.com/936/ xkcd>.\n\nProgram also prints how many words have been read, and indicates estimated\npassword space size in bits.\n\nUsing just four words from default English dictionary of ~50k words will\ngive approximately 90 bits of entropy. Lucky speakers of languages with\nrich inflection like Polish (over 3 million words) can easily up this to\nover 110 bits of entropy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."random-fu" or (buildDepError "random-fu"))
          (hsPkgs."random-source" or (buildDepError "random-source"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      exes = {
        "wordpass" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random-fu" or (buildDepError "random-fu"))
            (hsPkgs."random-source" or (buildDepError "random-source"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hflags" or (buildDepError "hflags"))
            ];
          };
        };
      };
    }
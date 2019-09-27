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
      identifier = { name = "Wordlint"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2014";
      maintainer = "gbgar@users.noreply.github.com";
      author = "GB Gardner";
      homepage = "https://github.com/gbgar/Wordlint";
      url = "";
      synopsis = "Plaintext prose redundancy linter.";
      description = "Wordlint locates matching pairs of words repeated within a user-defined\ndistance.  Text may be linted by distance between words (that is, by word\ncount), by line count, or by percentage of the total words in the file. For\ndetails on running the program, see README or the included man page.\nInternally, Wordlint separates a text file (or stdin) into\na list of \"Words\", after processing user flags. An instance of the \"Word\"\ndatatype consisting of a String that contains a lemma; its line and column\ncoordinates; and its \"position\": an Int or Float depending on the type of check\ninvoked by the user.\nThis list is first filtered by the user-defined minimum\nlength of the lemma. Next, items are matched by their lemma and exclusive\ncoordinates before being added to a list of \"Wordpairs\", a data structure\ncontaining two Words and the difference between their respective \"positions\".\nFinally, these Wordpairs are optionally filtered by the difference in their\npositions (another user-specified option). All remaining Wordpairs are\nprocessed for printing to stdout in machine-readable (default) or\nhuman-readable format. A plugin also exists for integration with Vim\n(https://github.com/gbgar/wordcheck.vim).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "wordlint" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."boxes" or (buildDepError "boxes"))
            ];
          buildable = true;
          };
        };
      };
    }
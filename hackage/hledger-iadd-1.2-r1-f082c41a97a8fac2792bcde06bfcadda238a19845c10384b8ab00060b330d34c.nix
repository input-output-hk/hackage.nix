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
      identifier = { name = "hledger-iadd"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Hans-Peter Deifel";
      maintainer = "Hans-Peter Deifel <hpd@hpdeifel.de>";
      author = "Hans-Peter Deifel <hpd@hpdeifel.de>";
      homepage = "https://github.com/hpdeifel/hledger-iadd#readme";
      url = "";
      synopsis = "A terminal UI as drop-in replacement for hledger add";
      description = "This is a terminal UI as drop-in replacement for hledger add.\n\nIt improves in the following ways on hledger's add command:\n\n* Interactive as-you-type completion for\naccount names and descriptions with optional\nfuzzy matching.\n\n* Integrated calculator: Amounts can be written\nas simple sums with real-time feedback on the\nresult.\n\n* All actions while entering a transaction can\nbe undone\n\n* Configurable format for date input. Instead\nof @y\\/m\\/d@ it is also possible to use other\nformats like the german @d.m.y@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
          (hsPkgs."brick" or (buildDepError "brick"))
          (hsPkgs."vty" or (buildDepError "vty"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."text-zipper" or (buildDepError "text-zipper"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          (hsPkgs."xdg-basedir" or (buildDepError "xdg-basedir"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."free" or (buildDepError "free"))
          ];
        buildable = true;
        };
      exes = {
        "hledger-iadd" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hledger-iadd" or (buildDepError "hledger-iadd"))
            (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."text-zipper" or (buildDepError "text-zipper"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."text-format" or (buildDepError "text-format"))
            (hsPkgs."xdg-basedir" or (buildDepError "xdg-basedir"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hledger-iadd" or (buildDepError "hledger-iadd"))
            (hsPkgs."hledger-lib" or (buildDepError "hledger-lib"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."text-format" or (buildDepError "text-format"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."text-zipper" or (buildDepError "text-zipper"))
            ];
          buildable = true;
          };
        };
      };
    }
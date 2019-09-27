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
      identifier = { name = "Facts"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2010 2piix.com";
      maintainer = "ajs@2piix.com";
      author = "Alexander Solla";
      homepage = "";
      url = "";
      synopsis = "A collection of facts about the real world.";
      description = "The Facts hierarchy is meant to contain commonly used, relatively static facts about the \\\"real world\\\".  The facts are meant to be encoded using relatively simple Haskell constructs.  However, we do make some promises:  every data type our modules export will have instances of 'Data', 'Eq', 'Ord', 'Show', and'Typeable'.  We will use explicit module export lists to control access to internal data structures.\n\nAs much of the data we are encoding is tabular, we use simple structures like lists and maps to encode the relations.  This has two practical ramifications:  the textual representation of the data can be very wide, but are also very easy to edit, with \\\"block editing\\\" tools like Vi's visual block mode.  The other consequence is that the naive approach to writing queries can be tedious, and the resulting naive queries are slower than they could be.  Template Haskell can eliminate much of this drudgery.  Felipe Lessa has graciously donated some Template Haskell code which we have adapted.\n\nThe Facts\\.\\* hierarchy currently contains modules with geographical information, such as a data type of countries, cross references to various ISO-3166-1 names for each, a list of states in the United States, and the United States address format.  Please see the module hierarchy for more specifics.  Patches are welcomed, though prospective contributors are encouraged to encode data structures using lists of pairs to encode bijections, all exposed data types are instances of 'Data', `Eq`, `Ord`, `Show`, and `Typeable`, and to use explicit exports to only export queries and their input and output types and constructors.  For now, we will add facts to the hierarchy lazily, as our projects need them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."AC-Angle" or (buildDepError "AC-Angle"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."digits" or (buildDepError "digits"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }
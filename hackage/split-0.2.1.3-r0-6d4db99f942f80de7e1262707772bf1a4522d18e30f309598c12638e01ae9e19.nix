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
      identifier = { name = "split"; version = "0.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Brent Yorgey, Louis Wasserman 2008-2012";
      maintainer = "byorgey@cis.upenn.edu";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Combinator library for splitting lists.";
      description = "A collection of various methods for splitting\nlists into parts, akin to the \\\"split\\\" function\nfound in several mainstream languages. Here is\nits tale:\n\nOnce upon a time the standard \"Data.List\" module\nheld no function for splitting a list into parts\naccording to a delimiter.  Many a brave\nlambda-knight strove to add such a function, but\ntheir striving was in vain, for Lo, the Supreme\nCouncil fell to bickering amongst themselves what\nwas to be the essential nature of the One True\nFunction which could cleave a list in twain (or\nthrain, or any required number of parts).\n\nAnd thus came to pass the split package,\ncomprising divers functions for splitting a list\nasunder, each according to its nature.  And the\nSupreme Council had no longer any grounds for\nargument, for the favored method of each was\ncontained therein.\n\nTo get started, see the \"Data.List.Split\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      tests = {
        "split-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        };
      };
    }
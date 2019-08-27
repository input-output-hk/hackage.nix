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
      specVersion = "2.0";
      identifier = { name = "first-class-patterns"; version = "0.3.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Reiner Pope, Brent Yorgey";
      homepage = "https://github.com/kowainik/first-class-patterns";
      url = "";
      synopsis = "First class patterns and pattern matching, using type families";
      description = "This package implements a library of first class patterns. The\ninitial basis for this library was Morten Rhiger's \\\"Type-safe\npattern combinators\\\"; the patterns can be used in an almost\nidentical way to those of Morten Rhiger. In a series of blog\nposts at\n<http://reinerp.wordpress.com/category/pattern-combinators/>\nthe types of patterns were made more revealing using type\nfamilies, and a simpler implementation was used which avoids\nsome book-keeping.\n\nThe library reimplements most of Haskell's built-in\npattern matching facilities, plus some more. The pattern\nmatches of this library are lightweight: when GHC's\noptimisation is turned on, all overhead should be optimised\naway, leaving a standard Haskell pattern match.\n\nIf you're just reading the documentation for this library for\nthe first time, start with \"Data.Pattern\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }
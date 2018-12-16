{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "first-class-patterns";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reiner Pope <reiner.pope@gmail.com>";
      author = "Reiner Pope";
      homepage = "";
      url = "";
      synopsis = "First class patterns and pattern matching, using type families";
      description = "This package implements a library of first class patterns. The\ninitial basis for this library was Morten Rhiger's \\\"Type-safe\npattern combinators\\\"; the patterns can be used in an almost\nidentical way to those of Morten Rhiger. In a series of blog\nposts at\n<http://reinerp.wordpress.com/category/pattern-combinators/>\nthe types of patterns were made more revealing using type\nfamilies, and a simpler implementation was used which avoids\nsome book-keeping.\n\nThe library reimplements most of Haskell's built-in\npattern matching facilities, plus some more. The pattern\nmatches of this library are lightweight: when GHC's\noptimisation is turned on, all overhead should be optimised\naway, leaving a standard Haskell pattern match.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }
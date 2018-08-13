{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "first-class-patterns";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>";
      author = "Reiner Pope, Brent Yorgey";
      homepage = "https://github.com/reinerp/first-class-patterns";
      url = "";
      synopsis = "First class patterns and pattern matching, using type families";
      description = "This package implements a library of first class patterns. The\ninitial basis for this library was Morten Rhiger's \\\"Type-safe\npattern combinators\\\"; the patterns can be used in an almost\nidentical way to those of Morten Rhiger. In a series of blog\nposts at\n<http://reinerp.wordpress.com/category/pattern-combinators/>\nthe types of patterns were made more revealing using type\nfamilies, and a simpler implementation was used which avoids\nsome book-keeping.\n\nThe library reimplements most of Haskell's built-in\npattern matching facilities, plus some more. The pattern\nmatches of this library are lightweight: when GHC's\noptimisation is turned on, all overhead should be optimised\naway, leaving a standard Haskell pattern match.\n\nIf you're just reading the documentation for this library for\nthe first time, start with \"Data.Pattern\".";
      buildType = "Simple";
    };
    components = {
      "first-class-patterns" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }
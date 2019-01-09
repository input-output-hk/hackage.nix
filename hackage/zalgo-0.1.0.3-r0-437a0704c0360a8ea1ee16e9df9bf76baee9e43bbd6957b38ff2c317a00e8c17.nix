{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "zalgo"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mniip@mniip.com";
      author = "mniip";
      homepage = "http://github.com/mniip/zalgo";
      url = "";
      synopsis = "Z-algorithm implemented on haskell's built-in cons-cell-based lists.";
      description = "A few efficient list-processing functions using the Z-function, which is\ndefined as:\n\n> (z xs) !! i\n\nis the length of the largest proper substring of @xs@ ending at position @i@,\nsuch that it equals the beginning of @xs@.\n\nFor example:\n\n> .-----.             .-----.\n> a b a c a b a a a b a b a c d\n> 0 0 1 0 1 2 3 1 1 2 3 2 3 4 0\n>                           ^\n\nThe marked substrings are equal, hence the value at the marked location is\ntheir length, 4.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }
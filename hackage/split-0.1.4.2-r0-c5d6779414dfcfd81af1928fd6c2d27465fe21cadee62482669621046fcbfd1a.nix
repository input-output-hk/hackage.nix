{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { testing = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "split";
        version = "0.1.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "byorgey@cis.upenn.edu";
      author = "Brent Yorgey";
      homepage = "http://code.haskell.org/~byorgey/code/split";
      url = "";
      synopsis = "Combinator library for splitting lists.";
      description = "Combinator library and utility functions for splitting lists.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
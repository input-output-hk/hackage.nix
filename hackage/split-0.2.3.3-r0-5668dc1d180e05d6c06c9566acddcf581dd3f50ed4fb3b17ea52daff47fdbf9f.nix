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
      specVersion = "1.10";
      identifier = {
        name = "split";
        version = "0.2.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Brent Yorgey, Louis Wasserman 2008-2012";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Combinator library for splitting lists.";
      description = "A collection of various methods for splitting\nlists into parts, akin to the \\\"split\\\" function\nfound in several mainstream languages. Here is\nits tale:\n\nOnce upon a time the standard \"Data.List\" module\nheld no function for splitting a list into parts\naccording to a delimiter.  Many a brave\nlambda-knight strove to add such a function, but\ntheir striving was in vain, for Lo, the Supreme\nCouncil fell to bickering amongst themselves what\nwas to be the essential nature of the One True\nFunction which could cleave a list in twain (or\nthrain, or any required number of parts).\n\nAnd thus came to pass the split package,\ncomprising divers functions for splitting a list\nasunder, each according to its nature.  And the\nSupreme Council had no longer any grounds for\nargument, for the favored method of each was\ncontained therein.\n\nTo get started, see the \"Data.List.Split\" module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "split-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.split)
          ];
        };
      };
    };
  }
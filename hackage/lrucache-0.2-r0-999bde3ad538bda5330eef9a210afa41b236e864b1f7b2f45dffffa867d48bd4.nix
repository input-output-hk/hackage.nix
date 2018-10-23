{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "lrucache";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Carl Howells, 2010";
      maintainer = "chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "http://github.com/chowells79/lrucache";
      url = "";
      synopsis = "a simple, pure LRU cache";
      description = "This package contains a simple, pure LRU cache, implemented in\nterms of \"Data.Map\".\n\nIt also contains a mutable IO wrapper providing atomic updates to\nan LRU cache.\n\nVersion History:\n\n0.2 - Added an Eq instance for LRU.\nAdded strictness to eliminate space leaks in common use patterns.\n\n0.1.1 - Add the Data.Cache.LRU.IO.Internal module.\nClean up build warnings on GHC 6.12.1.\n\n0.1.0.1 - Minor refactoring\n\n0.1 - First release";
      buildType = "Simple";
    };
    components = {
      "lrucache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "test" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.explicit-exception)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }
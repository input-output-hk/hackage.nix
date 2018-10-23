{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "strict";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2007 by Roman Leshchinskiy";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "http://www.cse.unsw.edu.au/~rl/code/strict.html";
      url = "";
      synopsis = "Strict data types and String IO.";
      description = "This package provides strict versions of some standard Haskell data\ntypes (pairs, Maybe and Either). It also contains strict IO\noperations.";
      buildType = "Simple";
    };
    components = {
      "strict" = {
        depends  = if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }
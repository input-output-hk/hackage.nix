{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      base4 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "exact-combinatorics";
        version = "0.2.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011--2013 wren ng thornton";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Efficient exact computation of combinatoric functions.";
      description = "Efficient exact computation of combinatoric functions.";
      buildType = "Custom";
    };
    components = {
      "exact-combinatorics" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
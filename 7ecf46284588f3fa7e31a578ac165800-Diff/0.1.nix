{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Diff";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.clover@gmail.com";
      author = "Sterling Clover";
      homepage = "";
      url = "";
      synopsis = "O(ND) diff algorithm in haskell.";
      description = "Basic implementation of the standard diff algorithm.";
      buildType = "Simple";
    };
    components = {
      "Diff" = {
        depends  = if _flags.small-base
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }
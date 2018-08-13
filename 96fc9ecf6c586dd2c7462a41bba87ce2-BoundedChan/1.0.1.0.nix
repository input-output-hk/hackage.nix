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
      specVersion = "1.6";
      identifier = {
        name = "BoundedChan";
        version = "1.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Wick <awick@galois.com>";
      author = "Adam Wick <awick@galois.com>, Chris Kuklewicz <haskell@list.mightyreason.com>";
      homepage = "";
      url = "";
      synopsis = "Implementation of bounded channels.";
      description = "This library introduces BoundedChan. BoundedChans differ from\nChans in that they are guaranteed to contain no more than a\ncertain number of elements.";
      buildType = "Simple";
    };
    components = {
      "BoundedChan" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
    };
  }
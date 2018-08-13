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
        name = "brians-brain";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Will Donnelly";
      maintainer = "Will Donnelly <will.donnelly@gmail.com>";
      author = "Will Donnelly";
      homepage = "http://github.com/willdonnelly/brians-brain";
      url = "";
      synopsis = "A Haskell implementation of the Brian's Brain cellular automaton";
      description = "The Brian's Brain cellular automaton implemented in just 49 lines\nof Haskell, with fancy GUI and everything.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "brians-brain" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parallel)
            (hsPkgs.SDL)
            (hsPkgs.random)
            (hsPkgs.array)
          ];
        };
      };
    };
  }
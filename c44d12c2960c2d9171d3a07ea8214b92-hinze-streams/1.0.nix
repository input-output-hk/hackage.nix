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
      specVersion = "1.2";
      identifier = {
        name = "hinze-streams";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Ralf Hinze";
      homepage = "http://code.haskell.org/~dons/code/hinze-streams";
      url = "";
      synopsis = "Streams and Unique Fixed Points";
      description = "Numeric instances for infinite streams. An implementation of:\n\n/Functional Pearl: Streams and Unique Fixed Points/, Ralf Hinze, University of Oxford\n\nStreams, infinite sequences of elements, live in a coworld: they are\ngiven by a coinductive data type, operations on streams are implemented\nby corecursive programs, and proofs are conducted using coinduction. But\nthere is more to it: suitably restricted, stream equations possess\nunique solutions, a fact that is not very widely appreciated. We show\nthat this property gives rise to a simple and attractive proof technique\nessentially bringing equational reasoning to the coworld. In fact, we\nredevelop the theory of recurrences, finite calculus and generating\nfunctions using streams and stream operators building on the cornerstone\nof unique solutions. The development is constructive: streams and stream\noperators are implemented in Haskell, usually by one-liners. The\nresulting calculus or library, if you wish, is elegant and fun to use.\nFinally, we rephrase the proof of uniqueness using generalised algebraic\ndata types.\n\nAlong with the usual instances for infinite streams, this provides:\nNum, Enum, Real, Fractional, as well as recurrences on streams,\nfinite calculus, generators\n";
      buildType = "Simple";
    };
    components = {
      "hinze-streams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.Stream)
        ];
      };
    };
  }
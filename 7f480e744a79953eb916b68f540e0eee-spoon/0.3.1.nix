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
        name = "spoon";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Matt Morrow & Dan Peebles, 2013 Liyang HU";
      maintainer = "Liyang HU <spoon@liyang.hu>";
      author = "Matt Morrow, Dan Peebles, Liyang HU";
      homepage = "";
      url = "";
      synopsis = "Catch errors thrown from pure computations.";
      description = "Takes an error-throwing expression and puts it back in the Maybe it belongs in.\n\nNote that this suffers from the <https://ghc.haskell.org/trac/ghc/ticket/5902 asynchronous exceptions re-thrown as synchronous> problem. Buyer beware.";
      buildType = "Simple";
    };
    components = {
      "spoon" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
        ];
      };
    };
  }
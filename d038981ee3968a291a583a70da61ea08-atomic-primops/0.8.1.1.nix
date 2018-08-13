{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      debug = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "atomic-primops";
        version = "0.8.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
      url = "";
      synopsis = "A safe approach to CAS and other atomic ops in Haskell.";
      description = "After GHC 7.4 a new `casMutVar#` primop became available, but it's\ndifficult to use safely, because pointer equality is a highly\nunstable property in Haskell.  This library provides a safer method\nbased on the concept of \"Tickets\".\n\nAlso, this library uses the \"foreign primop\" capability of GHC to\nadd access to other variants that may be of\ninterest, specifically, compare and swap inside an array.\n\nNote that as of GHC 7.8, the relevant primops have been included in GHC itself.\nThis library is engineered to work pre- and post-GHC-7.8, while exposing the\nsame interface.";
      buildType = "Simple";
    };
    components = {
      "atomic-primops" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
        ];
      };
    };
  }
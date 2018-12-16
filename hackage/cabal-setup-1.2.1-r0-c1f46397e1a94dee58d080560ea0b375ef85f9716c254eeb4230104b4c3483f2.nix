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
      specVersion = "1.2";
      identifier = {
        name = "cabal-setup";
        version = "1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2005, Simon Marlow";
      maintainer = "http://hackage.haskell.org/trac/hackage/";
      author = "Simon Marlow <simonmar@microsoft.com>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "The user interface for building and installing Cabal packages";
      description = "cabal-setup is a user interface to Cabal.  It provides the\nbasic commands for configuring, building, and installing\nCabal packages.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-setup" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.base)
          ];
        };
      };
    };
  }
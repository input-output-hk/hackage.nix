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
        name = "unsafe";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/unsafe/";
      url = "";
      synopsis = "Unified interface to unsafe functions";
      description = "SafeHaskell introduced the notion of safe and unsafe modules.\nIn order to make as many as possible modules \\\"safe\\\",\nthe well-known unsafe functions were moved to distinguished modules.\nThis makes it hard to write packages that work\nwith both old and new versions of GHC.\nThis package provides a single module @System.Unsafe@\nthat exports the unsafe functions from the base package.\nIt provides them in a style ready for qualification,\nthat is, you should import them by\n\n> import qualified System.Unsafe as Unsafe\n\nThe package also contains a script called @rename-unsafe.sh@.\nIt replaces all occurrences of the original identifiers\nwith the qualified identifiers from this package.\nYou still have to adapt the import commands.\nIt uses the @darcs-replace-rec@ script from the @darcs-scripts@ package.";
      buildType = "Simple";
    };
    components = {
      "unsafe" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
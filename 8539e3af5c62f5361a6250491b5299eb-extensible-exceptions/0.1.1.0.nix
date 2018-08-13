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
        name = "extensible-exceptions";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Extensible exceptions";
      description = "This package provides extensible exceptions for both new and\nold versions of GHC (i.e., < 6.10).";
      buildType = "Simple";
    };
    components = {
      "extensible-exceptions" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
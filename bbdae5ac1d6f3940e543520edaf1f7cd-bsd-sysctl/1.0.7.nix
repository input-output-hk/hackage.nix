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
        name = "bsd-sysctl";
        version = "1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2010, Maxime Henrion";
      maintainer = "Maxime Henrion <mhenrion@gmail.com>";
      author = "Maxime Henrion";
      homepage = "";
      url = "";
      synopsis = "Access to the BSD sysctl(3) interface";
      description = "This module provides efficient access to the BSD sysctl(3) interface via the\nHaskell FFI.\n\nIt allows to read and write both basic sysctl types, as well as complex opaque\ntypes (typically C structures) described via Storable instances.";
      buildType = "Custom";
    };
    components = {
      "bsd-sysctl" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
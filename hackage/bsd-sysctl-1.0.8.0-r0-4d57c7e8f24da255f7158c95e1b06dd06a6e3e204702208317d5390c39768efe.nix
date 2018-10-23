{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bsd-sysctl";
        version = "1.0.8.0";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2010, Maxime Henrion";
      maintainer = "Alexei Pastuchov <info@maximka.de>";
      author = "Maxime Henrion";
      homepage = "https://github.com:p-alik/bsd-sysctl";
      url = "";
      synopsis = "Access to the BSD sysctl(3) interface";
      description = "This module provides efficient access to the BSD sysctl(3) interface via the\nHaskell FFI.\n\nIt allows to read and write both basic sysctl types, as well as complex opaque\ntypes (typically C structures) described via Storable instances.";
      buildType = "Simple";
    };
    components = {
      "bsd-sysctl" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
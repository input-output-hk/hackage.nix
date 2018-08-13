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
      specVersion = "1.8";
      identifier = {
        name = "shortcircuit";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Aristid Breitkreuz";
      maintainer = "aristidb@googlemail.com";
      author = "Aristid Breitkreuz";
      homepage = "http://github.com/aristidb/shortcircuit";
      url = "";
      synopsis = "Short-circuit values and expressions.";
      description = "Classes and functions for short-circuit values and expressions.";
      buildType = "Simple";
    };
    components = {
      "shortcircuit" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
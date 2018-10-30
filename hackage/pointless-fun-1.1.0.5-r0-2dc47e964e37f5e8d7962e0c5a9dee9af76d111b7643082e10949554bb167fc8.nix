{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "pointless-fun";
        version = "1.1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009--2013 wren ng thornton";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton, Matt Hellige";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Some common point-free combinators.";
      description = "Some common point-free combinators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
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
      specVersion = "1.2.1";
      identifier = {
        name = "generic-deriving";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "José Pedro Magalhães";
      homepage = "";
      url = "";
      synopsis = "Generic programming library for generalized deriving.";
      description = "This package provides functionality for generalizing the deriving mechanism\nin Haskell to arbitrary classes. It is described in the paper:\n\n*  /A generic deriving mechanism for Haskell/.\nJose Pedro Magalhaes, Atze Dijkstra, Johan Jeuring, and Andres Loeh.\nHaskell'10.";
      buildType = "Custom";
    };
    components = {
      "generic-deriving" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }
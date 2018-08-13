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
        name = "haskelldb-th";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Justin Bailey";
      maintainer = "jgbailey@gmail.com";
      author = "\"Justin Bailey\" <jgbailey@gmail.com>";
      homepage = "http://trac.haskell.org/haskelldb-th";
      url = "";
      synopsis = "Template Haskell utilities for HaskellDB.";
      description = "Utility functions that make defining tables, fields, and queries in\nHaskellDB simpler.";
      buildType = "Simple";
    };
    components = {
      "haskelldb-th" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.base)
          (hsPkgs.haskelldb)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }
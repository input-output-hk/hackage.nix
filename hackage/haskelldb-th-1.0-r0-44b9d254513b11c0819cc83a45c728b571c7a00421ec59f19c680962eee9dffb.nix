{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "haskelldb-th";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "jgbailey@gmail.com";
      author = "\"Justin Bailey \" <jgbailey@gmail.com>";
      homepage = "http://patch-tag.com/publicrepos/haskelldb-th";
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
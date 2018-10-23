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
        name = "records-sop";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andres@well-typed.com";
      author = "Andres Löh <andres@well-typed.com>";
      homepage = "";
      url = "";
      synopsis = "Record subtyping and record utilities with generics-sop";
      description = "This library provides utilities for working with labelled\nsingle-constructor record types via generics-sop.\n\nIt also provides functions to safely cast between record\ntypes if the target type has a subset of the fields (with\nthe same names) of the source type.";
      buildType = "Simple";
    };
    components = {
      "records-sop" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.generics-sop)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.hspec)
            (hsPkgs.generics-sop)
            (hsPkgs.records-sop)
            (hsPkgs.should-not-typecheck)
          ];
        };
      };
    };
  }
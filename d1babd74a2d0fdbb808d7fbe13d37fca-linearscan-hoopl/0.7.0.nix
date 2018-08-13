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
      specVersion = "1.10";
      identifier = {
        name = "linearscan-hoopl";
        version = "0.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "http://github.com/jwiegley/linearscan-hoopl";
      url = "";
      synopsis = "Makes it easy to use the linearscan register allocator with Hoopl";
      description = "This module provides a convenience wrapper and a type class, 'NodeAlloc',\nwhich makes it much easier to use the @linearscan@ library to allocate\nregisters for Hoople intermediate representations.\n\nAdditionally, it provides a DSL for construction of assembly language DSLs\nthat compile into Hoople program graphs.  See the tests for a concrete\nexample.";
      buildType = "Simple";
    };
    components = {
      "linearscan-hoopl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hoopl)
          (hsPkgs.linearscan)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.free)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.linearscan)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hoopl)
            (hsPkgs.linearscan)
            (hsPkgs.linearscan-hoopl)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.lens-family-core)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.fuzzcheck)
          ];
        };
      };
    };
  }
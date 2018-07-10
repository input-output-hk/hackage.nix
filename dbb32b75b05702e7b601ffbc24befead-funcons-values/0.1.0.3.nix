{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "funcons-values";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
        author = "L. Thomas van Binsbergen and Neil Sculthorpe";
        homepage = "http://plancomps.org";
        url = "";
        synopsis = "Library providing values and operations on values in a fixed universe.";
        description = "The PLanCompS project (<http://plancomps.org>) has developed a component-based approach to formal semantics.\nThe semantics of a language is defined by translating its constructs to combinations\nof `fundamental constructs' called /funcons/.\n\nThis package provides a fixed universe types, values and operations which are lifted to funcons as part of the /funcons-tools/ package (<http://hackage.haskell.org/package/funcons-tools>).\n";
        buildType = "Simple";
      };
      components = {
        funcons-values = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.bv
            hsPkgs.multiset
            hsPkgs.text
            hsPkgs.random-strings
          ];
        };
      };
    }
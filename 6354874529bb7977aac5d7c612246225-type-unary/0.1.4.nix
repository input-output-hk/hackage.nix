{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "type-unary";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2011 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "https://github.com/conal/type-unary";
        url = "";
        synopsis = "Type-level and typed unary natural numbers, vectors, inequality proofs";
        description = "Type-level and value-typed unary natural numbers, plus length-typed\nvectors, inequality proofs. There are probably many of these\npackages. Perhaps consolidate. This one is extracted from Shady.";
        buildType = "Simple";
      };
      components = {
        "type-unary" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ty
            hsPkgs.vector-space
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "binary-list";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dhelta.diaz@gmail.com";
        author = "Daniel Díaz";
        homepage = "";
        url = "";
        synopsis = "Lists of size length a power of two.";
        description = "Some algorithmic problems work only when the input list\nhas length a power of two. This library implements a\ndata structure optimized for this.";
        buildType = "Simple";
      };
      components = {
        "binary-list" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.transformers
          ];
        };
      };
    }
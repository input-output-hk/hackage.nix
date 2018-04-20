{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3.0";
        identifier = {
          name = "bimap";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "scook0@gmail.com";
        author = "Stuart Cook";
        homepage = "http://code.haskell.org/bimap";
        url = "";
        synopsis = "Bidirectional mapping between two key types";
        description = "A data structure representing a bidirectional mapping between two\nkey types. Each value in the bimap is associated with exactly one\nvalue of the opposite type.";
        buildType = "Custom";
      };
      components = {
        bimap = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3.0";
        identifier = {
          name = "bimap";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Stuart Cook and contributors 2008";
        maintainer = "scook0@gmail.com";
        author = "Stuart Cook";
        homepage = "http://code.haskell.org/bimap";
        url = "";
        synopsis = "Bidirectional mapping between two key types";
        description = "A data structure representing a bidirectional mapping between two\nkey types. Each value in the bimap is associated with exactly one\nvalue of the opposite type.";
        buildType = "Simple";
      };
      components = {
        bimap = {
          depends  = if _flags.small-base
            then [
              hsPkgs.base
              hsPkgs.containers
            ]
            else [ hsPkgs.base ];
        };
      };
    }
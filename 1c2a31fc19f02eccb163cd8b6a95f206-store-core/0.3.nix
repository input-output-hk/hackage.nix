{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      force-alignment = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "store-core";
          version = "0.3";
        };
        license = "MIT";
        copyright = "2016 FP Complete";
        maintainer = "Michael Sloan <sloan@fpcomplete.com>";
        author = "";
        homepage = "https://github.com/fpco/store#readme";
        url = "";
        synopsis = "Fast and lightweight binary serialization";
        description = "";
        buildType = "Simple";
      };
      components = {
        store-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.bytestring
            hsPkgs.fail
            hsPkgs.transformers
            hsPkgs.ghc-prim
            hsPkgs.text
          ];
        };
      };
    }
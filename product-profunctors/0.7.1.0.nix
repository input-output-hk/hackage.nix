{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "product-profunctors";
          version = "0.7.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Purely Agile";
        author = "Purely Agile";
        homepage = "https://github.com/tomjaguarpaw/product-profunctors";
        url = "";
        synopsis = "product-profunctors";
        description = "Product profunctors";
        buildType = "Simple";
      };
      components = {
        product-profunctors = {
          depends  = [
            hsPkgs.base
            hsPkgs.profunctors
            hsPkgs.contravariant
            hsPkgs.tagged
            hsPkgs.template-haskell
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.profunctors
              hsPkgs.product-profunctors
            ];
          };
        };
      };
    }
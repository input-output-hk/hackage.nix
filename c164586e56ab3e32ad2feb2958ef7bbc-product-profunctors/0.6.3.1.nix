{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "product-profunctors";
          version = "0.6.3.1";
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
            hsPkgs.template-haskell
          ];
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
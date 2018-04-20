{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "product-profunctors";
          version = "0.8.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013, Karamaan Group LLC; 2014-2017 Purely Agile Limited";
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
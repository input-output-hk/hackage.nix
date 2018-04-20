{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-zipper-monad";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "BSD3";
        maintainer = "kwangyul.seo@gmail.com";
        author = "Kwang Yul Seo";
        homepage = "https://github.com/kseo/text-zipper-monad#readme";
        url = "";
        synopsis = "Monadic interface to the text-zipper package";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        text-zipper-monad = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.text-zipper
          ];
        };
        tests = {
          text-zipper-monad-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.text-zipper
              hsPkgs.text-zipper-monad
            ];
          };
        };
      };
    }
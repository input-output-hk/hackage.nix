{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lens-family-th";
          version = "0.5.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Dan Burton 2012-2018";
        maintainer = "danburton.email@gmail.com";
        author = "Dan Burton";
        homepage = "http://github.com/DanBurton/lens-family-th#readme";
        url = "";
        synopsis = "Generate lens-family style lenses";
        description = "(see README.md)";
        buildType = "Simple";
      };
      components = {
        lens-family-th = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
        tests = {
          lens-family-th-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.transformers
              hsPkgs.lens-family-th
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }
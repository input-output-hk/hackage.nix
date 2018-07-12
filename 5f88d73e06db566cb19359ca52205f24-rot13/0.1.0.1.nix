{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rot13";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Kyle Van Berendonck, 2014";
        maintainer = "kvanberendonck@gmail.com";
        author = "Kyle Van Berendonck";
        homepage = "https://github.com/kvanberendonck/rot13";
        url = "";
        synopsis = "Fast ROT13 cipher for Haskell.";
        description = "A fast ROT13 cipher for Haskell implemented using as few branches as possible.\nFor more information on ROT13, see: <https://en.wikipedia.org/wiki/ROT13>";
        buildType = "Simple";
      };
      components = {
        "rot13" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.rot13
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-ste";
          version = "0.1.0.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "carter at wellposed dot com";
        author = "Carter Tazio Schonwald";
        homepage = "http://github.com/cartazio/monad-ste";
        url = "";
        synopsis = "ST monad with efficient explicit errors";
        description = "STE is a sibling to the ST monad that provides more efficient\nabortive errors than a standard EitherT or ExceptT monad stack.";
        buildType = "Simple";
      };
      components = {
        monad-ste = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.exceptions
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.monad-ste
            ];
          };
        };
      };
    }
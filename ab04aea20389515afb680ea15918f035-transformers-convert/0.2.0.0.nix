{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "transformers-convert";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jmacristovao@gmail.com";
        author = "João Cristóvão";
        homepage = "https://github.com/jcristovao/transformers-convert";
        url = "";
        synopsis = "Sensible conversions between some of the monad transformers";
        description = "Sensible conversions between MaybeT and EitherT monad transformers.";
        buildType = "Simple";
      };
      components = {
        "transformers-convert" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.either
            hsPkgs.data-easy
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.either
              hsPkgs.data-easy
              hsPkgs.text
              hsPkgs.errors
              hsPkgs.directory
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.unix
              hsPkgs.haskell-src-exts
              hsPkgs.hlint
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-time";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrzej Rybczak <andrzej@rybczak.net>, Jonathan Jouty <jonathan@scrive.com>";
        author = "Andrzej Rybczak";
        homepage = "https://github.com/scrive/monad-time";
        url = "";
        synopsis = "Type class for monads which carry the notion of the current time.";
        description = "'MonadTime' type class for monads which carry the notion of the current time.";
        buildType = "Simple";
      };
      components = {
        "monad-time" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.time
          ];
        };
        tests = {
          "monad-time-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.monad-time
              hsPkgs.time
            ];
          };
        };
      };
    }
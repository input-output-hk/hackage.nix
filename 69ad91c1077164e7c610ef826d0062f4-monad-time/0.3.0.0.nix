{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-time";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Scrive AB";
        maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>";
        author = "Andrzej Rybczak";
        homepage = "https://github.com/scrive/monad-time";
        url = "";
        synopsis = "Type class for monads which carry\nthe notion of the current time.";
        description = "'MonadTime' type class for monads\nwhich carry the notion of the current time.";
        buildType = "Simple";
      };
      components = {
        monad-time = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.time
          ];
        };
        tests = {
          monad-time-test = {
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
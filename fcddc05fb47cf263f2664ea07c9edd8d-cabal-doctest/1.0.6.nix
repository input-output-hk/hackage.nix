{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabal-doctest";
          version = "1.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Oleg Grenrus";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/cabal-doctest";
        url = "";
        synopsis = "A Setup.hs helper for doctests running";
        description = "Currently (beginning of 2017), there isn't @cabal doctest@\ncommand. Yet, to properly work doctest needs plenty of configuration.\nThis library provides the common bits for writing custom Setup.hs\nSee <https://github.com/haskell/cabal/issues/2327 Cabal/2327> for the progress\nof @cabal doctest@, i.e. whether this library is obsolete.";
        buildType = "Simple";
      };
      components = {
        "cabal-doctest" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.filepath
            hsPkgs.directory
          ];
        };
      };
    }
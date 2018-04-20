{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wxAsteroids";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wxHaskell developer mailing list <wxhaskell-devel@lists.sourceforge.net>";
        author = "Daan Leijen";
        homepage = "https://wiki.haskell.org/WxAsteroids";
        url = "";
        synopsis = "Try to avoid the asteroids with your space ship";
        description = "The Asteroids game, using the wxHaskell GUI, as described in\n\\\"wxHaskell, A Portable and Concise GUI Library for Haskell\\\"\n<http://legacy.cs.uu.nl/daan/download/papers/wxhaskell.pdf>";
        buildType = "Simple";
      };
      components = {
        exes = {
          wxAsteroids = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.random
              hsPkgs.wxcore
              hsPkgs.wx
            ];
          };
        };
      };
    }
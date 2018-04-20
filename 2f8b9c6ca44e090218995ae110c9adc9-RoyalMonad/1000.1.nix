{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "RoyalMonad";
          version = "1000.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzeus@gmail.com";
        author = "Atze van der Ploeg";
        homepage = "https://github.com/atzeus/RoyalMonad";
        url = "";
        synopsis = "All hail the Royal Monad!";
        description = "All hail the Royal Monad!";
        buildType = "Simple";
      };
      components = {
        RoyalMonad = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "types-compat";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/types-compat";
        url = "";
        synopsis = "ghc-7.6/7.8 compatible GHC.TypeLits, Data.Typeable and Data.Proxy.";
        description = "";
        buildType = "Simple";
      };
      components = {
        types-compat = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.tagged;
        };
      };
    }
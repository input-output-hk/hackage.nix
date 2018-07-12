{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simpleirc-lens";
          version = "0.2.0.0";
        };
        license = "BSD-2-Clause";
        copyright = "(C) 2014 Ricky Elrod";
        maintainer = "ricky@elrod.me";
        author = "Ricky Elrod";
        homepage = "https://github.com/relrod/simpleirc-lens";
        url = "";
        synopsis = "Lenses for simpleirc types";
        description = "Provides lenses for types in the\n<https://hackage.haskell.org/package/simpleirc simpleirc> package without\ndepending on <https://hackage.haskell.org/package/lens lens>.";
        buildType = "Simple";
      };
      components = {
        "simpleirc-lens" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.simpleirc
          ];
        };
      };
    }
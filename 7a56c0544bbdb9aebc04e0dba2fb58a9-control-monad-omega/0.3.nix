{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "control-monad-omega";
          version = "0.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "http://github.com/luqui/control-monad-omega";
        url = "";
        synopsis = "A breadth-first list monad.";
        description = "A monad for enumerating sets: like the list\nmonad but breadth-first.";
        buildType = "Simple";
      };
      components = {
        control-monad-omega = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
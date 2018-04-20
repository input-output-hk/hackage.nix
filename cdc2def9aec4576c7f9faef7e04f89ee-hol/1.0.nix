{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "hol";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
        author = "Joe Leslie-Hurd <joe@gilith.com>";
        homepage = "";
        url = "";
        synopsis = "Higher order logic";
        description = "This package implements a higher order logic kernel.";
        buildType = "Simple";
      };
      components = {
        hol = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
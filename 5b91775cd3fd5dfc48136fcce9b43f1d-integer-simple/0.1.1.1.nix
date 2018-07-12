{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "integer-simple";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "igloo@earth.li";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Simple Integer library";
        description = "This package contains an simple Integer library.";
        buildType = "Simple";
      };
      components = {
        "integer-simple" = {
          depends  = [ hsPkgs.ghc-prim ];
        };
      };
    }
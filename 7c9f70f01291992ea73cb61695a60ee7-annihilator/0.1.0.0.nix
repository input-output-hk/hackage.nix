{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "annihilator";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Benedict Aas";
        maintainer = "x@shou.io";
        author = "Benedict Aas";
        homepage = "http://github.com/Shou/annihilator#readme";
        url = "";
        synopsis = "Semigroups with annihilators and utility functions";
        description = "Annihilators are semigroups with annihilators and therefore almost act as\nthe opposite of Alternative. This package comes with the typeclass and\nutility functions.";
        buildType = "Simple";
      };
      components = {
        "annihilator" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
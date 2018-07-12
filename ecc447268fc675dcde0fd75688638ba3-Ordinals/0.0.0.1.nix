{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Ordinals";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kya@pdx.edu";
        author = "Ki Yung Ahn";
        homepage = "https://patch-tag.com/r/kyagrd/Ordinals/";
        url = "";
        synopsis = "Ordinal arithmetic";
        description = "Ordinal arithmetic implementation up to epsilon_0.\nCurrently based on interated multiset representation,\nplanning to add CNF based implenetation.";
        buildType = "Simple";
      };
      components = {
        "Ordinals" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
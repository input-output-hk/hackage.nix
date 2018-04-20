{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "EuroIT";
          version = "2010.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010 Paolo Veronelli";
        maintainer = "Paolo Veronelli <paolo.veronelli@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Library for using euro currency, italian language";
        description = "..";
        buildType = "Simple";
      };
      components = {
        EuroIT = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
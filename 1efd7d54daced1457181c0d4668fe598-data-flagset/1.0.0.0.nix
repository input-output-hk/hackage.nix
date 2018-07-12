{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-flagset";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "Copyright 2015, Tobias Brandt";
        maintainer = "tob.brandt@gmail.com";
        author = "Tobias Brandt";
        homepage = "";
        url = "";
        synopsis = "An efficient data type for sets of flags";
        description = "This package provides a data type for representing a set of\nenum flags with an API similar to that of Data.Set from\nthe containers package.";
        buildType = "Simple";
      };
      components = {
        "data-flagset" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
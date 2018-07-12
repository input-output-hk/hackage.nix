{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "eithers";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Collection of functions for dealing with Either values.";
        description = "Collection of functions for dealing with Either values.";
        buildType = "Simple";
      };
      components = {
        "eithers" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
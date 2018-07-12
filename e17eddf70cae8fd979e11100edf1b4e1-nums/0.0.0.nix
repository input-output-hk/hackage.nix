{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nums";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Handy common number functions";
        description = "Handy common number functions";
        buildType = "Simple";
      };
      components = {
        "nums" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
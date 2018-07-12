{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "data-quotientref";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "";
        url = "";
        synopsis = "Reference cells that need two independent indices to be accessed.";
        description = "Reference cells that need two independent indices to be accessed.";
        buildType = "Simple";
      };
      components = {
        "data-quotientref" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
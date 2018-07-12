{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "arrow-extras";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/arrow-extras#readme";
        url = "";
        synopsis = "Extra functions for Control.Arrow";
        description = "Extra functions for Control.Arrow";
        buildType = "Simple";
      };
      components = {
        "arrow-extras" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stm-extras";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/stm-extras#readme";
        url = "";
        synopsis = "Extra STM functions";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "stm-extras" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }
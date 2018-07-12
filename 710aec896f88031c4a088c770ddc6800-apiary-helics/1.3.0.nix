{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-helics";
          version = "1.3.0";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "helics support for apiary web framework.";
        description = "helics support for apiary web framework.";
        buildType = "Simple";
      };
      components = {
        "apiary-helics" = {
          depends  = [
            hsPkgs.base
            hsPkgs.apiary
            hsPkgs.helics
            hsPkgs.helics-wai
            hsPkgs.vault
            hsPkgs.transformers
            hsPkgs.monad-control
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.data-default-class
          ];
        };
      };
    }
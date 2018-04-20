{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ap-reflect";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "odbaev@yandex.ru";
        author = "Oleg Baev";
        homepage = "https://github.com/cmc-msu-ai/ap-reflect";
        url = "";
        synopsis = "Partial evaluation reflection a la simple-reflect.";
        description = "";
        buildType = "Simple";
      };
      components = {
        ap-reflect = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
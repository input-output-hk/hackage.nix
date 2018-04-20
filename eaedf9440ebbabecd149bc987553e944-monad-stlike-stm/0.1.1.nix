{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-stlike-stm";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Taru Karttunen <taruti@taruti.net>";
        maintainer = "taruti@taruti.net";
        author = "Taru Karttunen";
        homepage = "http://github.com/taruti/monad-stlike-stm";
        url = "";
        synopsis = "ST-like monad capturing variables to regions and supporting STM.";
        description = "ST-like monad capturing variables to regions and supporting STM.";
        buildType = "Simple";
      };
      components = {
        monad-stlike-stm = {
          depends  = [
            hsPkgs.monad-stlike-io
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }
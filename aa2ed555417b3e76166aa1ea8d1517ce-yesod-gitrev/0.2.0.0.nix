{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-gitrev";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 FP Complete Corporation";
        maintainer = "danburton.email@gmail.com";
        author = "Dan Burton";
        homepage = "https://github.com/DanBurton/yesod-gitrev";
        url = "";
        synopsis = "A subsite for displaying git information.";
        description = "";
        buildType = "Simple";
      };
      components = {
        yesod-gitrev = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.gitrev
            hsPkgs.template-haskell
            hsPkgs.yesod-core
          ];
        };
      };
    }
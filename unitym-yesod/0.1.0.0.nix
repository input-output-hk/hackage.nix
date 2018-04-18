{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unitym-yesod";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Brian Hurt";
        maintainer = "bhurt42@gmail.com";
        author = "Brian Hurt";
        homepage = "https://github.com/githubuser/unitym-yesod#readme";
        url = "";
        synopsis = "Implementation of the unity monad for the Yesod framework";
        description = "Implementation of the unity monad for the Yesod framework";
        buildType = "Simple";
      };
      components = {
        unitym-yesod = {
          depends  = [
            hsPkgs.base
            hsPkgs.unitym
            hsPkgs.yesod
          ];
        };
      };
    }
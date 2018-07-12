{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "GiveYouAHead";
          version = "0.2.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "qinka@live.com";
        author = "Qinka";
        homepage = "https://github.com/Qinka/GiveYouAHead/";
        url = "";
        synopsis = "to auto-do somethings";
        description = "to auto-do somethings";
        buildType = "Simple";
      };
      components = {
        "GiveYouAHead" = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.extra
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yam-job";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Daniel YU";
        maintainer = "i@icymint.me";
        author = "Daniel YU";
        homepage = "https://github.com/leptonyu/yam-job#readme";
        url = "";
        synopsis = "";
        description = "Job Module for Yam";
        buildType = "Simple";
      };
      components = {
        "yam-job" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yam-app
            hsPkgs.cron
          ];
        };
      };
    }
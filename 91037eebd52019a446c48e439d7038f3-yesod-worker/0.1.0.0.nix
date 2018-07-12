{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-worker";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016";
        maintainer = "jamesdabbs@gmail.com";
        author = "James Dabbs";
        homepage = "https://github.com/jamesdabbs/yesod-worker#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "yesod-worker" = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hedis
            hsPkgs.keenser
            hsPkgs.thyme
            hsPkgs.yesod
          ];
        };
        tests = {
          "yesod-worker-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod-worker
            ];
          };
        };
      };
    }
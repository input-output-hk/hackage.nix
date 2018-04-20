{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "unamb-custom";
          version = "0.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Luke Palmer <lrpalmer@gmail.com>";
        author = "Luke Palmer";
        homepage = "http://github.com/luqui/unamb-custom";
        url = "";
        synopsis = "Functional concurrency with unamb using a custom scheduler.";
        description = "Functional concurrency with unamb using a custom scheduler, which\nmakes it practical to use in dense situations (eg. infinite folds\non unamb).";
        buildType = "Simple";
      };
      components = {
        unamb-custom = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }
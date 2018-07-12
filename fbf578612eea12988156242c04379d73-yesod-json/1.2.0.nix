{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-json";
          version = "1.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Generate content for Yesod using the aeson package. (deprecated)";
        description = "Since version 1.2 of Yesod, the functionality provided by this module is provided by yesod-core itself. You no longer need to use this package.";
        buildType = "Simple";
      };
      components = {
        "yesod-json" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
          ];
        };
      };
    }
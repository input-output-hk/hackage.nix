{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai";
          version = "3.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/yesodweb/wai";
        url = "";
        synopsis = "Web Application Interface.";
        description = "API docs and the README are available at <http://www.stackage.org/package/wai>.";
        buildType = "Simple";
      };
      components = {
        "wai" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-builder
            hsPkgs.blaze-builder
            hsPkgs.network
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.vault
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai
              hsPkgs.hspec
              hsPkgs.blaze-builder
              hsPkgs.bytestring
            ];
          };
        };
      };
    }
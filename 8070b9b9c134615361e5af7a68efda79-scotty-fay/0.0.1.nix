{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scotty-fay";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Harry Garrood <harry@garrood.me>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Fay integration for Scotty.";
        description = "Fay integration for Scotty. For more information, please see <https://github.com/hdgarrood/scotty-fay>.";
        buildType = "Simple";
      };
      components = {
        "scotty-fay" = {
          depends  = [
            hsPkgs.base
            hsPkgs.scotty
            hsPkgs.fay
            hsPkgs.fay-jquery
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.http-types
            hsPkgs.wai
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.directory
          ];
        };
        tests = {
          "scotty-fay-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.scotty-fay
              hsPkgs.wai-test
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.directory
              hsPkgs.wai
              hsPkgs.transformers
              hsPkgs.http-types
              hsPkgs.scotty
            ];
          };
        };
      };
    }